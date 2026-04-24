import serial
import csv
import time
import os
import re

#Config 
SERIAL_PORT = "/dev/cu.usbserial-10" 
BAUD_RATE = 115200
BODY_PART = "left_hand"

#Action and folder setup
action = input("Enter action name (e.g., jab, hook): ").strip()
folder = action
os.makedirs(folder, exist_ok=True)

def get_next_number(folder, action):
    existing = [f for f in os.listdir(folder) if f.startswith(f"{action}_") and f.endswith(".csv")]
    numbers = [int(re.search(r'_(\d+)\.csv$', f).group(1)) for f in existing if re.search(r'_(\d+)\.csv$', f)]
    return max(numbers, default=0) + 1

file_number = get_next_number(folder, action)


recording = False
data_buffer = []

#serial setup
try:
    ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=0.1)
    print(f"Connected to {SERIAL_PORT}. Waiting for ESP32...")
except Exception as e:
    print(f"Error connecting to serial port: {e}")
    exit()


print(f"Waiting for gestures... (Perform action on glove)")

try:
    while True:
        if ser.in_waiting > 0:
            # Read a line and decode it
            line = ser.readline().decode('utf-8', errors='ignore').strip()
            
            # Check for START marker from ESP32
            if line == "START":
                recording = True
                data_buffer = []
                print(f"\n--- Gesture {file_number} started ---")
            
            # Check for END marker from ESP32
            elif line == "END":
                if recording:
                    filename = f"{action}_{file_number}.csv"
                    filepath = os.path.join(folder, filename)

                    with open(filepath, mode="w", newline="") as f:
                        writer = csv.writer(f)
                        writer.writerow(["timestamp", "ax", "ay", "az", "gx", "gy", "gz"])
                        writer.writerows(data_buffer)

                    print(f"--- Saved {filepath} (Collected {len(data_buffer)} samples) ---")
                    
                    file_number += 1
                    recording = False
                    data_buffer = []

            # Handle sensor data rows
            elif recording:
                parts = line.split(",")
                if len(parts) == 6:
                    # Append timestamp + the 6 sensor values
                    data_buffer.append([time.time()] + parts)

except KeyboardInterrupt:
    print("\nStopping script...")
finally:
    ser.close()
    print("Serial connection closed.")