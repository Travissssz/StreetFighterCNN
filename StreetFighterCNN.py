
import torch
import torch.nn as nn

class StreetFighterCNN(nn.Module):
    def __init__(self, config=None): # Added config param to keep it flexible
        super(StreetFighterCNN, self).__init__()

        self.model = nn.Sequential(
            # --- BLOCK 0 ---
            # Input: (6, 150) -> Output: (112, 150)
            nn.Conv1d(6, 32, kernel_size=3, padding=1),
            nn.BatchNorm1d(32),
            nn.ReLU(),
            # Pool: (112, 150) -> (112, 50)
            nn.MaxPool1d(kernel_size=4),
            nn.Dropout(0.2304),

            # --- BLOCK 1 ---
            # Input: (112, 50) -> Output: (80, 50)
            nn.Conv1d(32, 128, kernel_size=3, padding=1),
            nn.BatchNorm1d(128),
            nn.ReLU(),
            # Pool: (80, 50) -> (80, 25)
            nn.MaxPool1d(kernel_size=3),
            nn.Dropout(0.4305),

            # --- BLOCK 2 ---
            # Input: (80, 25) -> Output: (96, 25)
            nn.Conv1d(128, 96, kernel_size=3, padding=1),
            nn.BatchNorm1d(96),
            nn.ReLU(),
            # Pool: (96, 25) -> (96, 12)
            nn.MaxPool1d(kernel_size=3),
            nn.Dropout(0.3206),

            # --- FINAL LAYERS ---
            # AdaptiveAvgPool ensures the input to Linear is always 96
            nn.AdaptiveAvgPool1d(1),
            nn.Flatten(),
            nn.Linear(96, 10) # 10 classes
        )

    def forward(self, x):
        # x shape should be (Batch, 6, 150)
        return self.model(x)
