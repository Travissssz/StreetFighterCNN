import os
import json
import time
import joblib
import serial
import numpy as np
import torch
import torch.nn as nn
from collections import deque
from scipy.interpolate import interp1d

#Config
EXPORT_DIR = "street_fighter_export"

SERIAL_PORT = "/dev/cu.usbserial-110"    
BAUD_RATE = 115200

# live inference settings
RAW_BUFFER_SIZE = 25          
MODEL_INPUT_LENGTH = 20       
PREDICT_EVERY_N_SAMPLES = 2   
CONFIDENCE_THRESHOLD = 0.60   
SMOOTHING_WINDOW = 5          

DEVICE = torch.device(
    "cuda" if torch.cuda.is_available()
    else "mps" if torch.backends.mps.is_available()
    else "cpu"
)

# Model
class StreetFighterCNN(nn.Module):
    def __init__(self, num_classes=10):
        super(StreetFighterCNN, self).__init__()

        self.model = nn.Sequential(
            # Input: (Batch, 6, 20)
            nn.Conv1d(6, 64, kernel_size=5, padding=2),
            nn.BatchNorm1d(64),
            nn.ReLU(),
            nn.MaxPool1d(kernel_size=2),   # -> (Batch, 64, 10)
            nn.Dropout(0.15789805985107816),

            nn.Conv1d(64, 32, kernel_size=3, padding=1),
            nn.BatchNorm1d(32),
            nn.ReLU(),
            nn.Dropout(0.1981132230256581),

            nn.AdaptiveAvgPool1d(1),
            nn.Flatten(),
            nn.Linear(32, num_classes)
        )

    def forward(self, x):
        return self.model(x)

# Helpers
def resample_to_length(data: np.ndarray, target_len: int) -> np.ndarray:
    old_len = data.shape[0]

    if old_len == target_len:
        return data.astype(np.float32)

    if old_len < 2:
        return np.repeat(data, target_len, axis=0).astype(np.float32)

    x_old = np.linspace(0, 1, old_len)
    x_new = np.linspace(0, 1, target_len)

    f = interp1d(x_old, data, axis=0, kind="linear", fill_value="extrapolate")
    return f(x_new).astype(np.float32)

def softmax_numpy(x: np.ndarray) -> np.ndarray:
    x = x - np.max(x)
    e = np.exp(x)
    return e / np.sum(e)

def parse_sensor_line(line: str):
    parts = line.strip().split(",")
    if len(parts) != 6:
        return None
    try:
        vals = [float(x) for x in parts]
        return vals
    except ValueError:
        return None

def preprocess_window(
    raw_window: np.ndarray,
    a_mean: np.ndarray,
    a_std: np.ndarray,
    g_mean: np.ndarray,
    g_std: np.ndarray,
    target_rows: int
) -> np.ndarray:
    """
    raw_window shape: (T, 6)
    returns: (6, target_rows)
    """
    data = raw_window.astype(np.float32)

    # resample to exactly 20
    data = resample_to_length(data, target_rows)

    # z-score normalization
    data[:, :3] = (data[:, :3] - a_mean) / a_std
    data[:, 3:6] = (data[:, 3:6] - g_mean) / g_std

    # transpose for CNN: (6, 20)
    data = data.T.astype(np.float32)
    return data

def majority_vote(labels):
    if len(labels) == 0:
        return None
    vals, counts = np.unique(labels, return_counts=True)
    return vals[np.argmax(counts)]

#Load files needed for testing
with open(os.path.join(EXPORT_DIR, "model_config.json"), "r") as f:
    model_config = json.load(f)

with open(os.path.join(EXPORT_DIR, "normalization_stats.json"), "r") as f:
    norm_stats = json.load(f)

le = joblib.load(os.path.join(EXPORT_DIR, "label_street_fighter_encoder.pkl"))

a_mean = np.array(norm_stats["a_mean"], dtype=np.float32)
a_std  = np.array(norm_stats["a_std"], dtype=np.float32)
g_mean = np.array(norm_stats["g_mean"], dtype=np.float32)
g_std  = np.array(norm_stats["g_std"], dtype=np.float32)

num_classes = int(model_config["num_classes"])
target_rows = int(model_config["target_rows"])

print("Loaded config.")
print(f"Using device: {DEVICE}")
print(f"Target rows: {target_rows}")
print(f"Classes: {list(le.classes_)}")

#Load model
model = StreetFighterCNN(num_classes=num_classes).to(DEVICE)
state_dict_path = os.path.join(EXPORT_DIR, "street_fighter_model_state_dict.pth")
model.load_state_dict(torch.load(state_dict_path, map_location=DEVICE))
model.eval()

print("Model loaded successfully.")

#Serial setup
ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=1)
time.sleep(2)
print(f"Connected to {SERIAL_PORT} @ {BAUD_RATE}")

#Live buffering and inference
raw_buffer = deque(maxlen=RAW_BUFFER_SIZE)
prediction_history = deque(maxlen=SMOOTHING_WINDOW)

sample_counter = 0
last_print = ""

print("\nListening for live IMU data...\n")

try:
    while True:
        raw = ser.readline().decode(errors="ignore").strip()
        if not raw:
            continue

        vals = parse_sensor_line(raw)
        if vals is None:
            continue

        raw_buffer.append(vals)
        sample_counter += 1

        # wait until enough samples exist
        if len(raw_buffer) < 5:
            continue

        # don't infer on every single sample unless you want to
        if sample_counter % PREDICT_EVERY_N_SAMPLES != 0:
            continue

        # latest raw window
        window_np = np.array(raw_buffer, dtype=np.float32)  

        # preprocess -> (6,20)
        x = preprocess_window(
            raw_window=window_np,
            a_mean=a_mean,
            a_std=a_std,
            g_mean=g_mean,
            g_std=g_std,
            target_rows=target_rows
        )

        x_tensor = torch.tensor(x, dtype=torch.float32).unsqueeze(0).to(DEVICE)

        with torch.no_grad():
            logits = model(x_tensor)

        logits_np = logits.squeeze(0).cpu().numpy()
        probs = softmax_numpy(logits_np)

        pred_idx = int(np.argmax(probs))
        confidence = float(probs[pred_idx])
        pred_label = le.inverse_transform([pred_idx])[0]

        # threshold low-confidence noise
        if confidence >= CONFIDENCE_THRESHOLD:
            prediction_history.append(pred_label)

        smoothed_pred = majority_vote(list(prediction_history))
        if smoothed_pred is None:
            smoothed_pred = "uncertain"

        output_text = (
            f"Prediction: {smoothed_pred:14s} | "
            f"Current: {pred_label:14s} | "
            f"Confidence: {confidence * 100:6.2f}% | "
            f"Raw samples in buffer: {len(raw_buffer)}"
        )

        # reduce console spam a bit
        if output_text != last_print:
            print(output_text)
            last_print = output_text

except KeyboardInterrupt:
    print("\nStopped live recognition.")

finally:
    ser.close()
    print("Serial connection closed.")