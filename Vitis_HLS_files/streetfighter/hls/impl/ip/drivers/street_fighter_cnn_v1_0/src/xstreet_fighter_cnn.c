// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xstreet_fighter_cnn.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XStreet_fighter_cnn_CfgInitialize(XStreet_fighter_cnn *InstancePtr, XStreet_fighter_cnn_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XStreet_fighter_cnn_Start(XStreet_fighter_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_AP_CTRL) & 0x80;
    XStreet_fighter_cnn_WriteReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XStreet_fighter_cnn_IsDone(XStreet_fighter_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XStreet_fighter_cnn_IsIdle(XStreet_fighter_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XStreet_fighter_cnn_IsReady(XStreet_fighter_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XStreet_fighter_cnn_Continue(XStreet_fighter_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_AP_CTRL) & 0x80;
    XStreet_fighter_cnn_WriteReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XStreet_fighter_cnn_EnableAutoRestart(XStreet_fighter_cnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStreet_fighter_cnn_WriteReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XStreet_fighter_cnn_DisableAutoRestart(XStreet_fighter_cnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStreet_fighter_cnn_WriteReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_AP_CTRL, 0);
}

void XStreet_fighter_cnn_Set_input_r(XStreet_fighter_cnn *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStreet_fighter_cnn_WriteReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_INPUT_R_DATA, (u32)(Data));
    XStreet_fighter_cnn_WriteReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_INPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XStreet_fighter_cnn_Get_input_r(XStreet_fighter_cnn *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_INPUT_R_DATA);
    Data += (u64)XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_INPUT_R_DATA + 4) << 32;
    return Data;
}

u32 XStreet_fighter_cnn_Get_prediction(XStreet_fighter_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_PREDICTION_DATA);
    return Data;
}

u32 XStreet_fighter_cnn_Get_confidence(XStreet_fighter_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_CONFIDENCE_DATA);
    return Data;
}

u32 XStreet_fighter_cnn_Get_dbg_in0(XStreet_fighter_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_DBG_IN0_DATA);
    return Data;
}

u32 XStreet_fighter_cnn_Get_dbg_l1_0(XStreet_fighter_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_DBG_L1_0_DATA);
    return Data;
}

u32 XStreet_fighter_cnn_Get_dbg_gap0(XStreet_fighter_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_DBG_GAP0_DATA);
    return Data;
}

u32 XStreet_fighter_cnn_Get_dbg_score0(XStreet_fighter_cnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_DBG_SCORE0_DATA);
    return Data;
}

void XStreet_fighter_cnn_InterruptGlobalEnable(XStreet_fighter_cnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStreet_fighter_cnn_WriteReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_GIE, 1);
}

void XStreet_fighter_cnn_InterruptGlobalDisable(XStreet_fighter_cnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStreet_fighter_cnn_WriteReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_GIE, 0);
}

void XStreet_fighter_cnn_InterruptEnable(XStreet_fighter_cnn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_IER);
    XStreet_fighter_cnn_WriteReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_IER, Register | Mask);
}

void XStreet_fighter_cnn_InterruptDisable(XStreet_fighter_cnn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_IER);
    XStreet_fighter_cnn_WriteReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_IER, Register & (~Mask));
}

void XStreet_fighter_cnn_InterruptClear(XStreet_fighter_cnn *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStreet_fighter_cnn_WriteReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_ISR, Mask);
}

u32 XStreet_fighter_cnn_InterruptGetEnabled(XStreet_fighter_cnn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_IER);
}

u32 XStreet_fighter_cnn_InterruptGetStatus(XStreet_fighter_cnn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XStreet_fighter_cnn_ReadReg(InstancePtr->Control_BaseAddress, XSTREET_FIGHTER_CNN_CONTROL_ADDR_ISR);
}

