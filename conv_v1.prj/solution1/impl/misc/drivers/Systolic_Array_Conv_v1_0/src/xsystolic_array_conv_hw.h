// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of In_ddr
//        bit 31~0 - In_ddr[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of W_ddr
//        bit 31~0 - W_ddr[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of Out_ddr
//        bit 31~0 - Out_ddr[31:0] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XSYSTOLIC_ARRAY_CONV_AXILITES_ADDR_IN_DDR_DATA  0x10
#define XSYSTOLIC_ARRAY_CONV_AXILITES_BITS_IN_DDR_DATA  32
#define XSYSTOLIC_ARRAY_CONV_AXILITES_ADDR_W_DDR_DATA   0x18
#define XSYSTOLIC_ARRAY_CONV_AXILITES_BITS_W_DDR_DATA   32
#define XSYSTOLIC_ARRAY_CONV_AXILITES_ADDR_OUT_DDR_DATA 0x20
#define XSYSTOLIC_ARRAY_CONV_AXILITES_BITS_OUT_DDR_DATA 32

