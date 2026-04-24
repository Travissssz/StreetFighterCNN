// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSTREET_FIGHTER_CNN_H
#define XSTREET_FIGHTER_CNN_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xstreet_fighter_cnn_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XStreet_fighter_cnn_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XStreet_fighter_cnn;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XStreet_fighter_cnn_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XStreet_fighter_cnn_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XStreet_fighter_cnn_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XStreet_fighter_cnn_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XStreet_fighter_cnn_Initialize(XStreet_fighter_cnn *InstancePtr, UINTPTR BaseAddress);
XStreet_fighter_cnn_Config* XStreet_fighter_cnn_LookupConfig(UINTPTR BaseAddress);
#else
int XStreet_fighter_cnn_Initialize(XStreet_fighter_cnn *InstancePtr, u16 DeviceId);
XStreet_fighter_cnn_Config* XStreet_fighter_cnn_LookupConfig(u16 DeviceId);
#endif
int XStreet_fighter_cnn_CfgInitialize(XStreet_fighter_cnn *InstancePtr, XStreet_fighter_cnn_Config *ConfigPtr);
#else
int XStreet_fighter_cnn_Initialize(XStreet_fighter_cnn *InstancePtr, const char* InstanceName);
int XStreet_fighter_cnn_Release(XStreet_fighter_cnn *InstancePtr);
#endif

void XStreet_fighter_cnn_Start(XStreet_fighter_cnn *InstancePtr);
u32 XStreet_fighter_cnn_IsDone(XStreet_fighter_cnn *InstancePtr);
u32 XStreet_fighter_cnn_IsIdle(XStreet_fighter_cnn *InstancePtr);
u32 XStreet_fighter_cnn_IsReady(XStreet_fighter_cnn *InstancePtr);
void XStreet_fighter_cnn_Continue(XStreet_fighter_cnn *InstancePtr);
void XStreet_fighter_cnn_EnableAutoRestart(XStreet_fighter_cnn *InstancePtr);
void XStreet_fighter_cnn_DisableAutoRestart(XStreet_fighter_cnn *InstancePtr);

void XStreet_fighter_cnn_Set_input_r(XStreet_fighter_cnn *InstancePtr, u64 Data);
u64 XStreet_fighter_cnn_Get_input_r(XStreet_fighter_cnn *InstancePtr);
u32 XStreet_fighter_cnn_Get_prediction(XStreet_fighter_cnn *InstancePtr);
u32 XStreet_fighter_cnn_Get_confidence(XStreet_fighter_cnn *InstancePtr);
u32 XStreet_fighter_cnn_Get_dbg_in0(XStreet_fighter_cnn *InstancePtr);
u32 XStreet_fighter_cnn_Get_dbg_l1_0(XStreet_fighter_cnn *InstancePtr);
u32 XStreet_fighter_cnn_Get_dbg_gap0(XStreet_fighter_cnn *InstancePtr);
u32 XStreet_fighter_cnn_Get_dbg_score0(XStreet_fighter_cnn *InstancePtr);

void XStreet_fighter_cnn_InterruptGlobalEnable(XStreet_fighter_cnn *InstancePtr);
void XStreet_fighter_cnn_InterruptGlobalDisable(XStreet_fighter_cnn *InstancePtr);
void XStreet_fighter_cnn_InterruptEnable(XStreet_fighter_cnn *InstancePtr, u32 Mask);
void XStreet_fighter_cnn_InterruptDisable(XStreet_fighter_cnn *InstancePtr, u32 Mask);
void XStreet_fighter_cnn_InterruptClear(XStreet_fighter_cnn *InstancePtr, u32 Mask);
u32 XStreet_fighter_cnn_InterruptGetEnabled(XStreet_fighter_cnn *InstancePtr);
u32 XStreet_fighter_cnn_InterruptGetStatus(XStreet_fighter_cnn *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
