import torch
import pandas as pd
import numpy as np
import os

# Import your architectures (assuming both are in the same or separate files)
from StreetFighterLeftCNN import StreetFighterLeftCNN
from StreetFighterRightCNN import StreetFighterRightCNN
from config import load_config

def validate_hand(hand_side):
    """
    Validates a specific model (Left or Right)
    hand_side: 'left' or 'right'
    """
    # 1. Setup Paths and Config based on hand_side
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    config_file = f'model_{hand_side}_config.json'
    weights_file = f'street_fighter_final_{hand_side}_model.pth'
    
    if not os.path.exists(config_file) or not os.path.exists(weights_file):
        print(f"⚠️ Files for {hand_side} not found. Skipping...")
        return

    config = load_config(config_file)
    
    # 2. Initialize correct model class
    if hand_side == 'left':
        model = StreetFighterLeftCNN().to(device)
    else:
        model = StreetFighterRightCNN().to(device)
        
    model.load_state_dict(torch.load(weights_file, map_location=device))
    model.eval()

    # Data parameters
    base_path = f"/Users/travis/Desktop/{hand_side}_actions" # Assumes separate folders
    actions = config['classes']
    norm = config['normalization']
    window_size = 125 # Updated to your new 5-layer window size
    
    total_files = 0
    correct_predictions = 0

    print(f"\n--- Validating {hand_side.upper()} Hand Model ---")

    for action in actions:
        folder_path = os.path.join(base_path, action)
        if not os.path.exists(folder_path): continue
            
        csv_files = [f for f in os.listdir(folder_path) if f.endswith('.csv')]
        
        for file_name in csv_files:
            try:
                df = pd.read_csv(os.path.join(folder_path, file_name))
                df.columns = df.columns.str.strip()
                
                # Normalization
                a_part = (df[['ax', 'ay', 'az']].to_numpy().astype('float32') - norm['accel_min']) / (norm['accel_max'] - norm['accel_min'])
                g_part = (df[['gx', 'gy', 'gz']].to_numpy().astype('float32') - norm['gyro_min']) / (norm['gyro_max'] - norm['gyro_min'])
                
                # Combine & Pad/Crop to 125
                combined = np.hstack([a_part, g_part])
                if combined.shape[0] >= window_size:
                    combined = combined[:window_size, :]
                else:
                    combined = np.pad(combined, ((0, window_size - combined.shape[0]), (0, 0)), mode='constant')

                # Prepare Tensor (1, 6, 125)
                input_tensor = torch.tensor(combined).permute(1, 0).unsqueeze(0).to(device)

                with torch.no_grad():
                    output = model(input_tensor)
                    prediction = actions[torch.argmax(output, dim=1).item()]

                total_files += 1
                if prediction == action:
                    correct_predictions += 1

            except Exception as e:
                continue

    if total_files > 0:
        acc = (correct_predictions / total_files) * 100
        print(f"RESULT [{hand_side.upper()}]: {correct_predictions}/{total_files} Correct | Accuracy: {acc:.2f}%")
    else:
        print(f"No data found for {hand_side}.")

if __name__ == "__main__":
    # Validate both hands independently
    validate_hand('left')
    validate_hand('right')