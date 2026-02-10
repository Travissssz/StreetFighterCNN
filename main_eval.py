from StreetFighterCNN import StreetFighterCNN,config
import torch

model = StreetFighterCNN(config)

# 2. Load the state dictionary
# Use map_location='cpu' if you are loading a GPU-trained model on a CPU
state_dict = torch.load('street_fighter_final_model.pth', map_location=torch.device('cpu'))
# 3. Load weights into the model
model.load_state_dict(state_dict)

# 4. Set to evaluation mode for inference
model.eval()
