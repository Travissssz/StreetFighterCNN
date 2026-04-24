// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xstreet_fighter_cnn.h"

extern XStreet_fighter_cnn_Config XStreet_fighter_cnn_ConfigTable[];

#ifdef SDT
XStreet_fighter_cnn_Config *XStreet_fighter_cnn_LookupConfig(UINTPTR BaseAddress) {
	XStreet_fighter_cnn_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XStreet_fighter_cnn_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XStreet_fighter_cnn_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XStreet_fighter_cnn_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XStreet_fighter_cnn_Initialize(XStreet_fighter_cnn *InstancePtr, UINTPTR BaseAddress) {
	XStreet_fighter_cnn_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XStreet_fighter_cnn_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XStreet_fighter_cnn_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XStreet_fighter_cnn_Config *XStreet_fighter_cnn_LookupConfig(u16 DeviceId) {
	XStreet_fighter_cnn_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSTREET_FIGHTER_CNN_NUM_INSTANCES; Index++) {
		if (XStreet_fighter_cnn_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XStreet_fighter_cnn_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XStreet_fighter_cnn_Initialize(XStreet_fighter_cnn *InstancePtr, u16 DeviceId) {
	XStreet_fighter_cnn_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XStreet_fighter_cnn_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XStreet_fighter_cnn_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

