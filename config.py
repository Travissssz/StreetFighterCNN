import json

def load_config(file_path):
    with open(file_path, 'r') as f:
        config = json.load(f)
    return config        


if __name__ == "__main__":
    config = load_config('model_config.json')
    print(config)