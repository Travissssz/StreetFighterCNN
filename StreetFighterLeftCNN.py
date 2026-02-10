
import torch
import torch.nn as nn

class StreetFighterLeftCNN(nn.Module):
    def __init__(self, config=None):
        super(StreetFighterLeftCNN, self).__init__()

        self.model = nn.Sequential(
            # --- BLOCK 0 ---
            # Input: (6, 125) -> Output: (64, 125)
            nn.Conv1d(6, 64, kernel_size=3, padding=1),
            nn.BatchNorm1d(64),
            nn.ReLU(),
            nn.MaxPool1d(kernel_size=4), # 125 // 4 = 31
            nn.Dropout(0.2355),

            # --- BLOCK 1 ---
            # Input: (64, 31) -> Output: (80, 31)
            nn.Conv1d(64, 80, kernel_size=3, padding=1),
            nn.BatchNorm1d(80),
            nn.ReLU(),
            nn.MaxPool1d(kernel_size=3), # 31 // 3 = 10
            nn.Dropout(0.3822),

            # --- BLOCK 2 ---
            # Input: (80, 10) -> Output: (16, 10)
            nn.Conv1d(80, 16, kernel_size=3, padding=1),
            nn.BatchNorm1d(16),
            nn.ReLU(),
            nn.MaxPool1d(kernel_size=3), # 10 // 3 = 3
            nn.Dropout(0.2588),

            # --- BLOCK 3 ---
            # Input: (16, 3) -> Output: (32, 3)
            # Note: MaxPool of 5 on a length of 3 will result in 1 sample
            nn.Conv1d(16, 32, kernel_size=3, padding=1),
            nn.BatchNorm1d(32),
            nn.ReLU(),
            nn.MaxPool1d(kernel_size=5, stride=1, padding=2), # Padding added to handle small size
            nn.Dropout(0.2294),

            # --- BLOCK 4 ---
            # Input: (32, 3) -> Output: (112, 3)
            nn.Conv1d(32, 112, kernel_size=3, padding=1),
            nn.BatchNorm1d(112),
            nn.ReLU(),
            nn.MaxPool1d(kernel_size=3), # 3 // 3 = 1
            nn.Dropout(0.4833),

            # --- FINAL LAYERS ---
            nn.AdaptiveAvgPool1d(1),
            nn.Flatten(),
            # Final Flatten size is 112 because n_filters_out_channel4 was 112
            nn.Linear(112, 10) 
        )

    def forward(self, x):
        # Expected input: (Batch, 6, 125)
        return self.model(x)
