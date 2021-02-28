// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSYSTOLIC_ARRAY_CONV_H
#define XSYSTOLIC_ARRAY_CONV_H

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
#include "xsystolic_array_conv_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XSystolic_array_conv_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XSystolic_array_conv;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSystolic_array_conv_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSystolic_array_conv_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSystolic_array_conv_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSystolic_array_conv_ReadReg(BaseAddress, RegOffset) \
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
int XSystolic_array_conv_Initialize(XSystolic_array_conv *InstancePtr, u16 DeviceId);
XSystolic_array_conv_Config* XSystolic_array_conv_LookupConfig(u16 DeviceId);
int XSystolic_array_conv_CfgInitialize(XSystolic_array_conv *InstancePtr, XSystolic_array_conv_Config *ConfigPtr);
#else
int XSystolic_array_conv_Initialize(XSystolic_array_conv *InstancePtr, const char* InstanceName);
int XSystolic_array_conv_Release(XSystolic_array_conv *InstancePtr);
#endif


void XSystolic_array_conv_Set_In_ddr(XSystolic_array_conv *InstancePtr, u32 Data);
u32 XSystolic_array_conv_Get_In_ddr(XSystolic_array_conv *InstancePtr);
void XSystolic_array_conv_Set_W_ddr(XSystolic_array_conv *InstancePtr, u32 Data);
u32 XSystolic_array_conv_Get_W_ddr(XSystolic_array_conv *InstancePtr);
void XSystolic_array_conv_Set_Out_ddr(XSystolic_array_conv *InstancePtr, u32 Data);
u32 XSystolic_array_conv_Get_Out_ddr(XSystolic_array_conv *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
