// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSOBEL_RGB_AXIS_H
#define XSOBEL_RGB_AXIS_H

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
#include "xsobel_rgb_axis_hw.h"

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
    u64 Ctrl_BaseAddress;
} XSobel_rgb_axis_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XSobel_rgb_axis;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSobel_rgb_axis_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSobel_rgb_axis_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSobel_rgb_axis_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSobel_rgb_axis_ReadReg(BaseAddress, RegOffset) \
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
int XSobel_rgb_axis_Initialize(XSobel_rgb_axis *InstancePtr, UINTPTR BaseAddress);
XSobel_rgb_axis_Config* XSobel_rgb_axis_LookupConfig(UINTPTR BaseAddress);
#else
int XSobel_rgb_axis_Initialize(XSobel_rgb_axis *InstancePtr, u16 DeviceId);
XSobel_rgb_axis_Config* XSobel_rgb_axis_LookupConfig(u16 DeviceId);
#endif
int XSobel_rgb_axis_CfgInitialize(XSobel_rgb_axis *InstancePtr, XSobel_rgb_axis_Config *ConfigPtr);
#else
int XSobel_rgb_axis_Initialize(XSobel_rgb_axis *InstancePtr, const char* InstanceName);
int XSobel_rgb_axis_Release(XSobel_rgb_axis *InstancePtr);
#endif

void XSobel_rgb_axis_Start(XSobel_rgb_axis *InstancePtr);
u32 XSobel_rgb_axis_IsDone(XSobel_rgb_axis *InstancePtr);
u32 XSobel_rgb_axis_IsIdle(XSobel_rgb_axis *InstancePtr);
u32 XSobel_rgb_axis_IsReady(XSobel_rgb_axis *InstancePtr);
void XSobel_rgb_axis_EnableAutoRestart(XSobel_rgb_axis *InstancePtr);
void XSobel_rgb_axis_DisableAutoRestart(XSobel_rgb_axis *InstancePtr);

void XSobel_rgb_axis_Set_width(XSobel_rgb_axis *InstancePtr, u32 Data);
u32 XSobel_rgb_axis_Get_width(XSobel_rgb_axis *InstancePtr);
void XSobel_rgb_axis_Set_height(XSobel_rgb_axis *InstancePtr, u32 Data);
u32 XSobel_rgb_axis_Get_height(XSobel_rgb_axis *InstancePtr);

void XSobel_rgb_axis_InterruptGlobalEnable(XSobel_rgb_axis *InstancePtr);
void XSobel_rgb_axis_InterruptGlobalDisable(XSobel_rgb_axis *InstancePtr);
void XSobel_rgb_axis_InterruptEnable(XSobel_rgb_axis *InstancePtr, u32 Mask);
void XSobel_rgb_axis_InterruptDisable(XSobel_rgb_axis *InstancePtr, u32 Mask);
void XSobel_rgb_axis_InterruptClear(XSobel_rgb_axis *InstancePtr, u32 Mask);
u32 XSobel_rgb_axis_InterruptGetEnabled(XSobel_rgb_axis *InstancePtr);
u32 XSobel_rgb_axis_InterruptGetStatus(XSobel_rgb_axis *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
