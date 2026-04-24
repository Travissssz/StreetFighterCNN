// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of input_r
//        bit 31~0 - input_r[31:0] (Read/Write)
// 0x14 : Data signal of input_r
//        bit 31~0 - input_r[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of prediction
//        bit 31~0 - prediction[31:0] (Read)
// 0x20 : reserved
// 0x2c : Data signal of confidence
//        bit 15~0 - confidence[15:0] (Read)
//        others   - reserved
// 0x30 : reserved
// 0x3c : Data signal of dbg_in0
//        bit 15~0 - dbg_in0[15:0] (Read)
//        others   - reserved
// 0x40 : reserved
// 0x4c : Data signal of dbg_l1_0
//        bit 15~0 - dbg_l1_0[15:0] (Read)
//        others   - reserved
// 0x50 : reserved
// 0x5c : Data signal of dbg_gap0
//        bit 15~0 - dbg_gap0[15:0] (Read)
//        others   - reserved
// 0x60 : reserved
// 0x6c : Data signal of dbg_score0
//        bit 15~0 - dbg_score0[15:0] (Read)
//        others   - reserved
// 0x70 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL         0x00
#define CONTROL_ADDR_GIE             0x04
#define CONTROL_ADDR_IER             0x08
#define CONTROL_ADDR_ISR             0x0c
#define CONTROL_ADDR_INPUT_R_DATA    0x10
#define CONTROL_BITS_INPUT_R_DATA    64
#define CONTROL_ADDR_PREDICTION_DATA 0x1c
#define CONTROL_BITS_PREDICTION_DATA 32
#define CONTROL_ADDR_CONFIDENCE_DATA 0x2c
#define CONTROL_BITS_CONFIDENCE_DATA 16
#define CONTROL_ADDR_DBG_IN0_DATA    0x3c
#define CONTROL_BITS_DBG_IN0_DATA    16
#define CONTROL_ADDR_DBG_L1_0_DATA   0x4c
#define CONTROL_BITS_DBG_L1_0_DATA   16
#define CONTROL_ADDR_DBG_GAP0_DATA   0x5c
#define CONTROL_BITS_DBG_GAP0_DATA   16
#define CONTROL_ADDR_DBG_SCORE0_DATA 0x6c
#define CONTROL_BITS_DBG_SCORE0_DATA 16
