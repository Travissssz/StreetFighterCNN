# CG4002 — Street Fighter Gesture Recognition CNN

A gesture recognition system that classifies **10 Street Fighter-style combat moves** from IMU (accelerometer + gyroscope) data captured via a glove. The model is trained in PyTorch, tested locally, and deployed as a hardware-accelerated CNN IP core on an FPGA using Vitis HLS.

---

## Project Structure

```
AI_codes/
├── collect_data.py                  # IMU data collection from ESP32 via serial
├── StreetfighterCNN_training.ipynb  # Model training pipeline (Google Colab)
├── Local testing/
│   ├── local_testing.py             # Offline accuracy evaluation on CSV test set
│   └── test_cnn_live.py             # Live inference over serial from glove
│       └── street_fighter_export/   # Exported model artefacts (weights, config, encoder)
├── Vitis_HLS code/
│   ├── cnn_top.h                    # HLS top-level interface & type definitions
│   ├── cnn_top.cpp                  # HLS CNN inference implementation
│   ├── main.cpp                     # HLS testbench / verification driver
│   ├── weights.h                    # Quantised fixed-point model weights
│   └── test_samples.h               # Hard-coded test samples for HLS simulation
├── Streetfighter_ip/                # Vivado IP project (bitstream, XSA, block design)
├── Bitstream_check/                 # Bitstream verification artefacts
└── data_samples/                    # Raw collected CSV gesture data
```

---

## Recognised Actions

| Index | Action         |
|-------|----------------|
| 0     | jab            |
| 1     | left\_guard    |
| 2     | left\_hook     |
| 3     | left\_upper    |
| 4     | protect\_left  |
| 5     | protect\_right |
| 6     | punch          |
| 7     | right\_guard   |
| 8     | right\_hook    |
| 9     | right\_upper   |

---

## Pipeline Overview

```
ESP32 Glove (IMU)
      │  serial (115200 baud)
      ▼
collect_data.py          ← saves labelled CSVs per gesture
      │
      ▼
StreetfighterCNN_training.ipynb
  • Resample all windows to 20 timesteps
  • Z-score normalise accel & gyro separately
  • Data augmentation (time warp, jitter)
  • Hyperparameter search via Optuna
  • Train StreetFighterCNN (Conv1D × 2 + GAP + FC)
  • Export: model weights, normalization stats, label encoder
      │
      ├──▶ local_testing.py     ← batch evaluation on held-out CSVs
      ├──▶ test_cnn_live.py     ← real-time inference via serial
      └──▶ Vitis HLS code/      ← FPGA deployment
              cnn_top.cpp       ← fixed-point CNN IP core
              main.cpp          ← HLS C-sim testbench
```

---

## File Descriptions

### `collect_data.py`
Reads raw IMU data from an **ESP32** glove over a serial port and saves each gesture segment as a CSV file.

- Listens for `START` / `END` markers sent by the firmware to delimit a single gesture.
- Each row captured between the markers contains: `timestamp, ax, ay, az, gx, gy, gz`.
- Files are auto-numbered and saved as `<action>/<action>_<N>.csv`.

**Configuration** (top of file):
```python
SERIAL_PORT = "/dev/cu.usbserial-10"   # change to your port
BAUD_RATE   = 115200
BODY_PART   = "left_hand"
```

**Usage:**
```bash
python collect_data.py
# Enter action name when prompted, e.g.: jab
```

---

### `StreetfighterCNN_training.ipynb`
Google Colab notebook that covers the full training pipeline:

1. **Load & explore data** — scans all gesture CSVs, plots sequence-length distributions per class.
2. **Preprocessing** — resamples every gesture window to exactly 20 timesteps via linear interpolation; computes per-axis z-score statistics from the training set.
3. **Augmentation** — time-warping and Gaussian jitter to increase robustness.
4. **Hyperparameter tuning** — uses **Optuna** to search over number of layers, channel widths, kernel sizes, dropout rates, learning rate, and weight decay.
5. **Model training** — trains `StreetFighterCNN` for up to 50 epochs with early stopping (patience = 10), AdamW optimiser, and cross-entropy loss with label smoothing.
6. **Evaluation** — confusion matrix and per-class classification report on the test split.
7. **Export** — saves `street_fighter_model_state_dict.pth`, `normalization_stats.json`, `model_config.json`, and `label_street_fighter_encoder.pkl` into `street_fighter_export/`.

---

### `Local testing/local_testing.py`
Offline batch evaluation script. Loads the exported model artefacts and runs inference on every CSV in a test directory, printing per-file predictions and a final accuracy + confusion matrix.

**Configuration:**
```python
EXPORT_DIR    = "street_fighter_export"
TEST_DATA_DIR = "/path/to/your/test/csvs"   # folder with one sub-folder per action
```

**Usage:**
```bash
pip install torch scipy scikit-learn joblib pandas
python local_testing.py
```

**Output:**
```
jab_971.csv        | true=jab           | pred=jab           | conf= 97.34% | PASS
...
Accuracy: 190/200 = 95.00%
```

---

### `Local testing/test_cnn_live.py`
Real-time inference script. Connects to the ESP32 glove over serial, maintains a sliding window of raw IMU samples, and continuously predicts the current gesture.

**Configuration:**
```python
SERIAL_PORT           = "/dev/cu.usbserial-110"
BAUD_RATE             = 115200
RAW_BUFFER_SIZE       = 25      # sliding window length
MODEL_INPUT_LENGTH    = 20      # resampled input to CNN
PREDICT_EVERY_N_SAMPLES = 2     # inference frequency
CONFIDENCE_THRESHOLD  = 0.60    # suppress low-confidence predictions
SMOOTHING_WINDOW      = 5       # majority vote over last N predictions
```

**Usage:**
```bash
python test_cnn_live.py
```

Prints a live line each time the smoothed prediction changes:
```
Prediction: jab            | Current: jab            | Confidence:  91.23% | Raw samples in buffer: 25
```

---

### `Vitis_HLS code/cnn_top.h`
Header file defining the HLS top-level function signature and all fixed-point type aliases and dimension constants.

| Type     | Definition              | Purpose                        |
|----------|-------------------------|--------------------------------|
| `data_t` | `ap_fixed<16,6>`        | Input data & intermediate values |
| `acc_t`  | `ap_fixed<32,10>`       | Accumulator (prevents overflow) |
| `conf_t` | `ap_ufixed<16,7>`       | Confidence output (0–100%)     |

Key constants: `IN_CH=6`, `IN_LEN=20`, `L1_CH=64`, `L2_CH=32`, `NUM_CLASSES=10`.

---

### `Vitis_HLS code/cnn_top.cpp`
The synthesisable C++ implementation of the full CNN inference pipeline, including Vitis HLS pragmas for hardware optimisation.

Layers implemented:
1. **Input load** — burst-reads the `(6 × 20)` input array via AXI master (`m_axi`).
2. **Conv1** — 1-D convolution: 6 → 64 channels, kernel size 5, same padding, ReLU activation.
3. **MaxPool1** — kernel size 2, stride 2; output `(64 × 10)`.
4. **Conv2** — 1-D convolution: 64 → 32 channels, kernel size 3, same padding, ReLU activation.
5. **GAP + FC** — global average pool over time dimension, then a fully-connected layer to 10 logits.
6. **Argmax** — returns the class index with the highest score as `prediction`.
7. **Softmax confidence** — computed in float; clamped to `[0, 100]` and returned as `conf_t`.

Debug signals (`dbg_in0`, `dbg_l1_0`, `dbg_gap0`, `dbg_score0`) expose intermediate values for simulation verification.

**HLS Interface:** All ports are mapped to a single AXI-Lite `control` bus, with the input array additionally using an AXI4 master `gmem0` bus for DMA.

---

### `Vitis_HLS code/main.cpp`
C-simulation testbench for the HLS core. Iterates over the 20 hard-coded test samples in `test_samples.h`, calls `street_fighter_cnn()`, and prints pass/fail results plus debug values.

**Usage (Vitis HLS C-Sim):**  
Run via *Project → Run C Simulation* in Vitis HLS, or with a standalone C++ toolchain:
```bash
g++ -I<hls_include_path> main.cpp cnn_top.cpp -o hls_tb && ./hls_tb
```

---

### `Vitis_HLS code/weights.h`
Static constant arrays containing all trained model weights quantised to `data_t` (`ap_fixed<16,6>`):

| Array      | Shape              | Description              |
|------------|--------------------|--------------------------|
| `CONV1_W`  | `[64][6][5]`       | Conv layer 1 weights     |
| `CONV1_B`  | `[64]`             | Conv layer 1 biases      |
| `CONV2_W`  | `[32][64][3]`      | Conv layer 2 weights     |
| `CONV2_B`  | `[32]`             | Conv layer 2 biases      |
| `FC_W`     | `[10][32]`         | Fully-connected weights  |
| `FC_B`     | `[10]`             | Fully-connected biases   |

Weights are exported from the PyTorch model and converted to fixed-point using a custom script.

---

### `Vitis_HLS code/test_samples.h`
Defines the `test_sample_t` struct and a statically allocated array of **20 pre-processed test samples**, one per gesture class (2 per class), with ground-truth labels. Used by `main.cpp` for C-simulation accuracy verification.

---

## Model Architecture — `StreetFighterCNN`

```
Input: (Batch, 6 channels, 20 timesteps)
  │
  ├─ Conv1d(6→64, k=5, pad=2) → BatchNorm → ReLU → MaxPool(2) → Dropout(0.158)
  │    Output: (Batch, 64, 10)
  │
  ├─ Conv1d(64→32, k=3, pad=1) → BatchNorm → ReLU → Dropout(0.198)
  │    Output: (Batch, 32, 10)
  │
  ├─ AdaptiveAvgPool1d(1)  →  Flatten
  │    Output: (Batch, 32)
  │
  └─ Linear(32 → 10)
       Output: (Batch, 10) logits
```

**Training hyperparameters** (Optuna-tuned):
- Optimiser: AdamW, lr ≈ 0.00485, weight decay ≈ 0.000212
- Loss: CrossEntropyLoss with label smoothing ≈ 0.00235
- Epochs: up to 50 with early stopping (patience = 10)
- Batch size: 32

---

## Dependencies

### Python
```
torch
numpy
pandas
scipy
scikit-learn
joblib
pyserial
optuna          # training only
tqdm            # training only
matplotlib      # training only
seaborn         # training only
```

Install with:
```bash
pip install torch numpy pandas scipy scikit-learn joblib pyserial optuna tqdm matplotlib seaborn
```

### FPGA / HLS
- **Vitis HLS** (tested with Vitis 2022.x or later) for C-simulation and RTL synthesis
- **Vivado** for block design integration and bitstream generation
- Xilinx `ap_fixed.h` HLS library (included with Vitis HLS)

---

## Quick Start

### 1. Collect Data
```bash
# Connect ESP32 glove, update SERIAL_PORT in collect_data.py
python collect_data.py
# Enter: jab
# Perform gesture repeatedly; Ctrl-C to stop
```

### 2. Train Model
Open `StreetfighterCNN_training.ipynb` in Google Colab, upload your collected zip, and run all cells. Download the `street_fighter_export/` folder when done.

### 3. Test Offline
```bash
cp -r street_fighter_export "Local testing/"
cd "Local testing"
python local_testing.py
```

### 4. Test Live
```bash
cd "Local testing"
python test_cnn_live.py
```

### 5. FPGA Deployment
1. Open Vitis HLS, create a new project and add `cnn_top.cpp`, `cnn_top.h`, `weights.h`, `test_samples.h`, and `main.cpp`.
2. Set `street_fighter_cnn` as the top function.
3. Run **C Simulation** to verify accuracy against the 20 test samples.
4. Run **C Synthesis** then **Export RTL** to generate the IP core.
5. Import the IP into the Vivado block design (`Streetfighter_ip/`) and regenerate the bitstream.

---

## Notes

- The serial port paths (`/dev/cu.usbserial-*`) are macOS-style. On Linux use `/dev/ttyUSB*`; on Windows use `COM*`.
- `test_cnn_live.py` applies a confidence threshold (default 0.60) and a majority-vote smoothing window (default 5) to reduce spurious predictions.
- The HLS implementation uses `ap_fixed<16,6>` arithmetic throughout (except the final softmax which uses `float`) to balance precision with FPGA resource usage.
