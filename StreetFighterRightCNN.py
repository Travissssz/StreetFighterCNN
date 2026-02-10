import torch
import torch.nn as nn

class StreetFighterRightCNN(nn.Module):
    def __init__(self, config=None):
        super(StreetFighterRightCNN, self).__init__()

        # These values come directly from your "Best Trial Results"
        self.model = nn.Sequential(
            # --- BLOCK 0 ---
            # Input: (Batch, 6, 125) 
            nn.Conv1d(6, 48, kernel_size=3, padding=1),
            nn.BatchNorm1d(48),
            nn.ReLU(),
            # Pool: Output length = 125 // 4 = 31
            nn.MaxPool1d(kernel_size=4), 
            nn.Dropout(0.2286),

            # --- BLOCK 1 ---
            # Input: (Batch, 48, 31)
            nn.Conv1d(48, 64, kernel_size=3, padding=1),
            nn.BatchNorm1d(64),
            nn.ReLU(),
            # Pool: Output length = 31 // 2 = 15
            nn.MaxPool1d(kernel_size=2),
            nn.Dropout(0.2919),

            # --- BLOCK 2 ---
            # Input: (Batch, 64, 15)
            nn.Conv1d(64, 64, kernel_size=3, padding=1),
            nn.BatchNorm1d(64),
            nn.ReLU(),
            # Pool: Output length = 15 // 3 = 5
            nn.MaxPool1d(kernel_size=3),
            nn.Dropout(0.3053),

            # --- FINAL LAYERS ---
            # Compresses the time dimension to 1
            nn.AdaptiveAvgPool1d(1),
            nn.Flatten(),
            # Final Flatten size is 64 because n_filters_out_channel2 was 64
            nn.Linear(64, 10) # 10 classes (Jab, Hook, Block, etc.)
        )

    def forward(self, x):
        # x shape expected: (Batch, 6, 125)
        return self.model(x)
