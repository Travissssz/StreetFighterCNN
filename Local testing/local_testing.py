import os
import json
import glob
import joblib
import numpy as np
import pandas as pd
import torch
import torch.nn as nn
from scipy.interpolate import interp1d
from sklearn.metrics import classification_report, confusion_matrix


#Config
EXPORT_DIR = "street_fighter_export"
TEST_DATA_DIR = "/Users/travis/Desktop/20sample_try/combined_updated"

DEVICE = torch.device(
    "cuda" if torch.cuda.is_available()
    else "mps" if torch.backends.mps.is_available()
    else "cpu"
)

ACTIONS = [
    "jab",
    "left_guard",
    "left_hook",
    "left_upper",
    "protect_left",
    "protect_right",
    "punch",
    "right_guard",
    "right_hook",
    "right_upper"
]


#Model same as in google collab
class StreetFighterCNN(nn.Module):
    def __init__(self, num_classes=10):
        super(StreetFighterCNN, self).__init__()

        self.model = nn.Sequential(
            # BLOCK 0
            # Input:  (Batch, 6, 20)
            # Output: (Batch, 64, 20)
            nn.Conv1d(6, 64, kernel_size=5, padding=2),
            nn.BatchNorm1d(64),
            nn.ReLU(),
            nn.MaxPool1d(kernel_size=2), 
            nn.Dropout(0.15789805985107816),

            # BLOCK 1
            # Input:  (Batch, 64, 10)
            # Output: (Batch, 32, 10)
            nn.Conv1d(64, 32, kernel_size=3, padding=1),
            nn.BatchNorm1d(32),
            nn.ReLU(),
            nn.Dropout(0.1981132230256581),

            # FINAL
            nn.AdaptiveAvgPool1d(1),
            nn.Flatten(),
            nn.Linear(32, num_classes)
        )

    def forward(self, x):
        return self.model(x)


#Helpers
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


def preprocess_csv(
    csv_path: str,
    a_mean: np.ndarray,
    a_std: np.ndarray,
    g_mean: np.ndarray,
    g_std: np.ndarray,
    target_rows: int,
) -> np.ndarray:
    df = pd.read_csv(csv_path)
    df.columns = df.columns.str.strip()

    required_cols = ["ax", "ay", "az", "gx", "gy", "gz"]
    for col in required_cols:
        if col not in df.columns:
            raise ValueError(f"Missing required column '{col}' in {csv_path}")

    raw_a = df[["ax", "ay", "az"]].to_numpy(dtype=np.float32)
    raw_g = df[["gx", "gy", "gz"]].to_numpy(dtype=np.float32)

    # shape: (T, 6)
    data = np.hstack([raw_a, raw_g]).astype(np.float32)

    # resample to target length
    data = resample_to_length(data, target_rows)

    # z-score normalization
    data[:, :3] = (data[:, :3] - a_mean) / a_std
    data[:, 3:6] = (data[:, 3:6] - g_mean) / g_std

    # transpose to (6, target_rows)
    data = data.T.astype(np.float32)

    return data


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

target_rows = int(model_config["target_rows"])
num_classes = int(model_config["num_classes"])

print("Loaded config:")
print(json.dumps(model_config, indent=2))
print(f"Using device: {DEVICE}")
print(f"Target rows: {target_rows}")
print(f"Classes: {list(le.classes_)}")


#Load model
model = StreetFighterCNN(num_classes=num_classes).to(DEVICE)

state_dict_path = os.path.join(EXPORT_DIR, "street_fighter_model_state_dict.pth")
model.load_state_dict(torch.load(state_dict_path, map_location=DEVICE))
model.eval()

print("\nModel loaded successfully.")


#Run test
all_true = []
all_pred = []

correct = 0
total = 0

print("\n=== STARTING LOCAL CSV TEST ===\n")

with torch.no_grad():
    for class_name in ACTIONS:
        class_dir = os.path.join(TEST_DATA_DIR, class_name)

        if not os.path.isdir(class_dir):
            print(f"[WARNING] Missing folder: {class_dir}")
            continue

        csv_files = sorted(glob.glob(os.path.join(class_dir, "*.csv")))

        if len(csv_files) == 0:
            print(f"[WARNING] No CSV files found in: {class_dir}")
            continue

        for csv_path in csv_files:
            try:
                x = preprocess_csv(
                    csv_path=csv_path,
                    a_mean=a_mean,
                    a_std=a_std,
                    g_mean=g_mean,
                    g_std=g_std,
                    target_rows=target_rows,
                )

                #shape -> (1, 6, 20)
                x_tensor = torch.tensor(x, dtype=torch.float32).unsqueeze(0).to(DEVICE)

                logits = model(x_tensor)
                logits_np = logits.squeeze(0).cpu().numpy()

                pred_idx = int(np.argmax(logits_np))
                probs = softmax_numpy(logits_np)
                confidence = float(probs[pred_idx] * 100.0)

                pred_label = le.inverse_transform([pred_idx])[0]
                true_idx = int(le.transform([class_name])[0])

                all_true.append(true_idx)
                all_pred.append(pred_idx)

                is_correct = (pred_label == class_name)
                correct += int(is_correct)
                total += 1

                print(
                    f"{os.path.basename(csv_path):25s} | "
                    f"true={class_name:14s} | "
                    f"pred={pred_label:14s} | "
                    f"conf={confidence:6.2f}% | "
                    f"{'PASS' if is_correct else 'FAIL'}"
                )

            except Exception as e:
                print(f"[ERROR] {csv_path}: {e}")

#Print Summary
print("\n=== FINAL RESULTS ===")

if total > 0:
    accuracy = correct / total
    print(f"Accuracy: {correct}/{total} = {accuracy * 100:.2f}%")

    print("\nClassification Report:")
    print(
        classification_report(
            all_true,
            all_pred,
            target_names=list(le.classes_),
            digits=4,
            zero_division=0
        )
    )

    cm = confusion_matrix(all_true, all_pred)
    print("Confusion Matrix:")
    print(cm)
else:
    print("No samples were tested.")