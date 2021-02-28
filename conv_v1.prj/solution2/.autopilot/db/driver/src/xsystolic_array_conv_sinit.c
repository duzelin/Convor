// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xsystolic_array_conv.h"

extern XSystolic_array_conv_Config XSystolic_array_conv_ConfigTable[];

XSystolic_array_conv_Config *XSystolic_array_conv_LookupConfig(u16 DeviceId) {
	XSystolic_array_conv_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSYSTOLIC_ARRAY_CONV_NUM_INSTANCES; Index++) {
		if (XSystolic_array_conv_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSystolic_array_conv_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSystolic_array_conv_Initialize(XSystolic_array_conv *InstancePtr, u16 DeviceId) {
	XSystolic_array_conv_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSystolic_array_conv_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSystolic_array_conv_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

