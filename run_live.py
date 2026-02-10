import serial
import torch
import numpy as np
import collections
from StreetFighterLeftCNN import StreetFighterLeftCNN
from StreetFighterRightCNN import StreetFighterRightCNN
from config import load_config

# --- CONFIGURATION ---
# Assumes two different serial ports for Left and Right FireBeetles
SERIAL_PORT_L = '/dev/cu.usbserial-10' 
SERIAL_PORT_R = '/dev/cu.usbserial-110'
BAUD_RATE = 115200

# Optimized parameters from your 5-layer Best Trial
WINDOW_SIZE = 125             
STRIDE = 10                  
COOLDOWN_SAMPLES = 60        
CONFIDENCE_THRESHOLD = 0.55

def load_hand_model(hand_side, device):
    config = load_config(f'model_{hand_side}_config.json')
    if hand_side == 'left':
        model = StreetFighterLeftCNN().to(device)
    else:
        model = StreetFighterRightCNN().to(device)
    
    model.load_state_dict(torch.load(f'street_fighter_final_{hand_side}_model.pth', map_location=device))
    model.eval()
    return model, config

def process_inference(buffer, model, config, device):
    norm = config['normalization']
    window = np.array(buffer)
    
    # Normalization
    a_part = (window[:, :3] - norm['accel_min']) / (norm['accel_max'] - norm['accel_min'])
    g_part = (window[:, 3:] - norm['gyro_min']) / (norm['gyro_max'] - norm['gyro_min'])
    processed = np.hstack([a_part, g_part]).astype('float32')
    
    # Prepare Tensor (1, 6, 125)
    input_tensor = torch.tensor(processed).permute(1, 0).unsqueeze(0).to(device)
    
    with torch.no_grad():
        output = model(input_tensor)
        probs = torch.softmax(output, dim=1)
        conf, pred_idx = torch.max(probs, dim=1)
        return config['classes'][pred_idx.item()], conf.item()

def run_dual_live():
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    
    # Initialize models
    model_l, config_l = load_hand_model('left', device)
    model_r, config_r = load_hand_model('right', device)

    # Buffers and counters for both hands
    buffers = {'left': collections.deque(maxlen=WINDOW_SIZE), 'right': collections.deque(maxlen=WINDOW_SIZE)}
    cooldowns = {'left': 0, 'right': 0}
    steps = {'left': 0, 'right': 0}

    try:
        # Opening both serial ports
        ser_l = serial.Serial(SERIAL_PORT_L, BAUD_RATE, timeout=0.01)
        ser_r = serial.Serial(SERIAL_PORT_R, BAUD_RATE, timeout=0.01)
        
        print("--- DUAL HAND ENGINE ACTIVE ---")

        while True:
            # Check Left Hand
            if ser_l.in_waiting:
                line_l = ser_l.readline().decode('utf-8').strip()
                data_l = [float(x) for x in line_l.split(',') if x]
                if len(data_l) == 6:
                    buffers['left'].append(data_l)
                    steps['left'] += 1
            
            # Check Right Hand
            if ser_r.in_waiting:
                line_r = ser_r.readline().decode('utf-8').strip()
                data_r = [float(x) for x in line_r.split(',') if x]
                if len(data_r) == 6:
                    buffers['right'].append(data_r)
                    steps['right'] += 1

            # Inference Logic for both
            for side in ['left', 'right']:
                if cooldowns[side] > 0:
                    cooldowns[side] -= 1
                
                if len(buffers[side]) == WINDOW_SIZE and steps[side] >= STRIDE:
                    if cooldowns[side] == 0:
                        m = model_l if side == 'left' else model_r
                        c = config_l if side == 'left' else config_r
                        
                        action, conf = process_inference(buffers[side], m, c, device)
                        
                        if conf > CONFIDENCE_THRESHOLD and action.lower() != 'background':
                            side_icon = "⬅️" if side == 'left' else "➡️"
                            print(f"{side_icon} {side.upper()} ACTION: {action:10} ({conf*100:.1f}%)")
                            cooldowns[side] = COOLDOWN_SAMPLES
                    
                    steps[side] = 0

    except Exception as e:
        print(f"Error: {e}")
    finally:
        ser_l.close()
        ser_r.close()

if __name__ == "__main__":
    run_dual_live()