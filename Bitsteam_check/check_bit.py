from pynq import Overlay, allocate
import numpy as np

#Load overlay and IP 
ol = Overlay("sf_cnn.bit")
ip = ol.street_fighter_cnn_0

#  Register map 
REG_CTRL = 0x00
REG_INPUT_LO   = 0x10
REG_INPUT_HI   = 0x14
REG_PREDICTION = 0x1c
REG_CONFIDENCE = 0x2c
REG_DBG_IN0    = 0x3c

#Class names 
CLASS_NAMES = [
    "JAB", "LEFT_GUARD", "LEFT_HOOK", "LEFT_UPPER",
    "PROTECT_LEFT", "PROTECT_RIGHT", "PUNCH",
    "RIGHT_GUARD", "RIGHT_HOOK", "RIGHT_UPPER"
]

# Load test data 
data = np.load("ultra96_test_samples.npz", allow_pickle=True)
samples_q16 = data["samples_q16"]
labels = data["labels"]

print(f"Loaded {len(samples_q16)} samples from npz\n")

# Allocate DMA buffer 
buf = allocate(shape=(120,), dtype=np.int16, cacheable=False)

#decode ap_fixed<16,6> register -> float 
def decode_data_t(raw):
    val = raw & 0xFFFF
    signed = val if val < 32768 else val - 65536
    return signed / 1024.0

#decode ap_ufixed<16,7> confidence -> float 
def decode_conf_t(raw):
    return (raw & 0xFFFF) / 512.0

#clear ap_done and wait for ap_idle 
def clear_and_idle(timeout=100000):
    if ip.read(REG_CTRL) & 0x02:   # ap_done still high
        ip.write(REG_CTRL, 0x10)   # ap_continue to acknowledge
    for _ in range(timeout):
        if ip.read(REG_CTRL) & 0x04:   # ap_idle
            return True
    return False

#  Run all samples
print("=== FULL SAMPLE TEST ===")
print(f"{'S':>3} {'Predicted':<16} {'Target':<16} {'Conf%':>7} {'in0':>9} {'Fresh':>6} {'Match'}")
print("-" * 75)

correct = 0

for i in range(len(samples_q16)):
    sample = samples_q16[i].flatten()
    tgt = int(labels[i])

    # Clear done and wait for idle
    if not clear_and_idle():
        print(f"S{i:02d} | IDLE TIMEOUT — skipping")
        continue

    # Load into DMA buffer
    buf[:] = sample
    buf.flush()
    buf.invalidate()

    # Write physical address to IP
    addr = buf.physical_address
    ip.write(REG_INPUT_LO, addr & 0xFFFFFFFF)
    ip.write(REG_INPUT_HI, (addr >> 32) & 0xFFFFFFFF)

    # Start inference
    ip.write(REG_CTRL, 0x01)

    # Poll until ap_done
    for _ in range(500000):
        if ip.read(REG_CTRL) & 0x02:
            break

    # Read results
    pred = int(ip.read(REG_PREDICTION))
    confidence = decode_conf_t(ip.read(REG_CONFIDENCE))
    dbg_in0 = decode_data_t(ip.read(REG_DBG_IN0))
    exp_in0 = int(sample[0]) / 1024.0

    fresh = "YES" if abs(dbg_in0 - exp_in0) < 0.01 else "NO"
    match = pred == tgt

    if match:
        correct += 1

    pred_name = CLASS_NAMES[pred] if pred < len(CLASS_NAMES) else str(pred)
    tgt_name  = CLASS_NAMES[tgt]  if tgt  < len(CLASS_NAMES) else str(tgt)
    flag = "✓" if match else "✗"

    print(f"S{i:02d} | {pred_name:<16} {tgt_name:<16} "
          f"{confidence:>6.2f}%  {dbg_in0:>8.4f}  {fresh:>5}  {flag}")

#Summary
print("-" * 75)
print(f"\nAccuracy : {correct}/{len(samples_q16)}  ({correct/len(samples_q16)*100:.1f}%)")
print(f"Confidence should be between 10% and 100% for all samples.")

buf.freebuffer()
