// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xsobel_rgb_axis.h"

extern XSobel_rgb_axis_Config XSobel_rgb_axis_ConfigTable[];

#ifdef SDT
XSobel_rgb_axis_Config *XSobel_rgb_axis_LookupConfig(UINTPTR BaseAddress) {
	XSobel_rgb_axis_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XSobel_rgb_axis_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XSobel_rgb_axis_ConfigTable[Index].Ctrl_BaseAddress == BaseAddress) {
			ConfigPtr = &XSobel_rgb_axis_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSobel_rgb_axis_Initialize(XSobel_rgb_axis *InstancePtr, UINTPTR BaseAddress) {
	XSobel_rgb_axis_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSobel_rgb_axis_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSobel_rgb_axis_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XSobel_rgb_axis_Config *XSobel_rgb_axis_LookupConfig(u16 DeviceId) {
	XSobel_rgb_axis_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSOBEL_RGB_AXIS_NUM_INSTANCES; Index++) {
		if (XSobel_rgb_axis_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSobel_rgb_axis_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSobel_rgb_axis_Initialize(XSobel_rgb_axis *InstancePtr, u16 DeviceId) {
	XSobel_rgb_axis_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSobel_rgb_axis_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSobel_rgb_axis_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

