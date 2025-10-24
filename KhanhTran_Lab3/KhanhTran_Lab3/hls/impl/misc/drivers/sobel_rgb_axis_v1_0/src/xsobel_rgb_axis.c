// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xsobel_rgb_axis.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSobel_rgb_axis_CfgInitialize(XSobel_rgb_axis *InstancePtr, XSobel_rgb_axis_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSobel_rgb_axis_Start(XSobel_rgb_axis *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSobel_rgb_axis_ReadReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_AP_CTRL) & 0x80;
    XSobel_rgb_axis_WriteReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSobel_rgb_axis_IsDone(XSobel_rgb_axis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSobel_rgb_axis_ReadReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSobel_rgb_axis_IsIdle(XSobel_rgb_axis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSobel_rgb_axis_ReadReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSobel_rgb_axis_IsReady(XSobel_rgb_axis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSobel_rgb_axis_ReadReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSobel_rgb_axis_EnableAutoRestart(XSobel_rgb_axis *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSobel_rgb_axis_WriteReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_AP_CTRL, 0x80);
}

void XSobel_rgb_axis_DisableAutoRestart(XSobel_rgb_axis *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSobel_rgb_axis_WriteReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_AP_CTRL, 0);
}

void XSobel_rgb_axis_Set_width(XSobel_rgb_axis *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSobel_rgb_axis_WriteReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XSobel_rgb_axis_Get_width(XSobel_rgb_axis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSobel_rgb_axis_ReadReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XSobel_rgb_axis_Set_height(XSobel_rgb_axis *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSobel_rgb_axis_WriteReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XSobel_rgb_axis_Get_height(XSobel_rgb_axis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSobel_rgb_axis_ReadReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XSobel_rgb_axis_InterruptGlobalEnable(XSobel_rgb_axis *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSobel_rgb_axis_WriteReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_GIE, 1);
}

void XSobel_rgb_axis_InterruptGlobalDisable(XSobel_rgb_axis *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSobel_rgb_axis_WriteReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_GIE, 0);
}

void XSobel_rgb_axis_InterruptEnable(XSobel_rgb_axis *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSobel_rgb_axis_ReadReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_IER);
    XSobel_rgb_axis_WriteReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_IER, Register | Mask);
}

void XSobel_rgb_axis_InterruptDisable(XSobel_rgb_axis *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSobel_rgb_axis_ReadReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_IER);
    XSobel_rgb_axis_WriteReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_IER, Register & (~Mask));
}

void XSobel_rgb_axis_InterruptClear(XSobel_rgb_axis *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSobel_rgb_axis_WriteReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_ISR, Mask);
}

u32 XSobel_rgb_axis_InterruptGetEnabled(XSobel_rgb_axis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSobel_rgb_axis_ReadReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_IER);
}

u32 XSobel_rgb_axis_InterruptGetStatus(XSobel_rgb_axis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSobel_rgb_axis_ReadReg(InstancePtr->Ctrl_BaseAddress, XSOBEL_RGB_AXIS_CTRL_ADDR_ISR);
}

