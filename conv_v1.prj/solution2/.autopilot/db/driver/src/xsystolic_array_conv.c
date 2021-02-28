// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xsystolic_array_conv.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSystolic_array_conv_CfgInitialize(XSystolic_array_conv *InstancePtr, XSystolic_array_conv_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSystolic_array_conv_Set_In_ddr(XSystolic_array_conv *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystolic_array_conv_WriteReg(InstancePtr->Axilites_BaseAddress, XSYSTOLIC_ARRAY_CONV_AXILITES_ADDR_IN_DDR_DATA, Data);
}

u32 XSystolic_array_conv_Get_In_ddr(XSystolic_array_conv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystolic_array_conv_ReadReg(InstancePtr->Axilites_BaseAddress, XSYSTOLIC_ARRAY_CONV_AXILITES_ADDR_IN_DDR_DATA);
    return Data;
}

void XSystolic_array_conv_Set_W_ddr(XSystolic_array_conv *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystolic_array_conv_WriteReg(InstancePtr->Axilites_BaseAddress, XSYSTOLIC_ARRAY_CONV_AXILITES_ADDR_W_DDR_DATA, Data);
}

u32 XSystolic_array_conv_Get_W_ddr(XSystolic_array_conv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystolic_array_conv_ReadReg(InstancePtr->Axilites_BaseAddress, XSYSTOLIC_ARRAY_CONV_AXILITES_ADDR_W_DDR_DATA);
    return Data;
}

void XSystolic_array_conv_Set_Out_ddr(XSystolic_array_conv *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSystolic_array_conv_WriteReg(InstancePtr->Axilites_BaseAddress, XSYSTOLIC_ARRAY_CONV_AXILITES_ADDR_OUT_DDR_DATA, Data);
}

u32 XSystolic_array_conv_Get_Out_ddr(XSystolic_array_conv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSystolic_array_conv_ReadReg(InstancePtr->Axilites_BaseAddress, XSYSTOLIC_ARRAY_CONV_AXILITES_ADDR_OUT_DDR_DATA);
    return Data;
}

