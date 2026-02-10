import torch
import json
import os
from pytorch_nndct.apis import torch_quantizer
from StreetFighterCNN import StreetFighterCNN

print("--- Step 1: Loading Config and Model ---")
with open('model_config.json', 'r') as f:
    config = json.load(f)

model = StreetFighterCNN(config)
model.load_state_dict(torch.load('street_fighter_final_model.pth', map_location='cpu'))
model.eval()
print("Model loaded successfully.")

dummy_input = torch.randn([1, 6, 150])

print("\n--- Step 2: Starting Calibration ---")
quantizer = torch_quantizer('calib', model, (dummy_input))
with torch.no_grad():
    _ = quantizer.quant_model(dummy_input)
quantizer.export_quant_config()

print("\n--- Step 3: Starting Export to XMODEL ---")
quantizer = torch_quantizer('test', model, (dummy_input))
with torch.no_grad():
    _ = quantizer.quant_model(dummy_input)
quantizer.export_xmodel(deploy_check=True)

print("\n--- Step 4: Final Check ---")
if os.path.exists('quantize_result'):
    print("SUCCESS: 'quantize_result' folder created!")
else:
    print("ERROR: Folder still not found.")
