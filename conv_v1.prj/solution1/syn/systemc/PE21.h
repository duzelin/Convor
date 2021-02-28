// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _PE21_HH_
#define _PE21_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Systolic_Array_Cocud.h"
#include "Systolic_Array_CodEe.h"

namespace ap_rtl {

struct PE21 : public sc_module {
    // Port declarations 78
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > W_pre_V_dout;
    sc_in< sc_logic > W_pre_V_empty_n;
    sc_out< sc_logic > W_pre_V_read;
    sc_in< sc_lv<32> > In_pre_V_dout;
    sc_in< sc_logic > In_pre_V_empty_n;
    sc_out< sc_logic > In_pre_V_read;
    sc_out< sc_lv<32> > W_next_V8_din;
    sc_in< sc_logic > W_next_V8_full_n;
    sc_out< sc_logic > W_next_V8_write;
    sc_out< sc_lv<32> > In_next_V50_din;
    sc_in< sc_logic > In_next_V50_full_n;
    sc_out< sc_logic > In_next_V50_write;
    sc_in< sc_lv<32> > row_dout;
    sc_in< sc_logic > row_empty_n;
    sc_out< sc_logic > row_read;
    sc_in< sc_lv<32> > cho_dout;
    sc_in< sc_logic > cho_empty_n;
    sc_out< sc_logic > cho_read;
    sc_out< sc_lv<32> > O_V_din;
    sc_in< sc_logic > O_V_full_n;
    sc_out< sc_logic > O_V_write;
    sc_in< sc_lv<32> > p_c_s_dout;
    sc_in< sc_logic > p_c_s_empty_n;
    sc_out< sc_logic > p_c_s_read;
    sc_in< sc_lv<32> > p_chin_s_dout;
    sc_in< sc_logic > p_chin_s_empty_n;
    sc_out< sc_logic > p_chin_s_read;
    sc_in< sc_lv<32> > p_k_s_dout;
    sc_in< sc_logic > p_k_s_empty_n;
    sc_out< sc_logic > p_k_s_read;
    sc_out< sc_lv<32> > row_out_din;
    sc_in< sc_logic > row_out_full_n;
    sc_out< sc_logic > row_out_write;
    sc_out< sc_lv<32> > cho_out_din;
    sc_in< sc_logic > cho_out_full_n;
    sc_out< sc_logic > cho_out_write;
    sc_out< sc_lv<32> > cho_out1_din;
    sc_in< sc_logic > cho_out1_full_n;
    sc_out< sc_logic > cho_out1_write;
    sc_out< sc_lv<32> > p_c_out_din;
    sc_in< sc_logic > p_c_out_full_n;
    sc_out< sc_logic > p_c_out_write;
    sc_out< sc_lv<32> > p_c_out2_din;
    sc_in< sc_logic > p_c_out2_full_n;
    sc_out< sc_logic > p_c_out2_write;
    sc_out< sc_lv<32> > p_chin_out_din;
    sc_in< sc_logic > p_chin_out_full_n;
    sc_out< sc_logic > p_chin_out_write;
    sc_out< sc_lv<32> > p_chin_out3_din;
    sc_in< sc_logic > p_chin_out3_full_n;
    sc_out< sc_logic > p_chin_out3_write;
    sc_out< sc_lv<32> > p_chout_out_din;
    sc_in< sc_logic > p_chout_out_full_n;
    sc_out< sc_logic > p_chout_out_write;
    sc_out< sc_lv<32> > p_chout_out4_din;
    sc_in< sc_logic > p_chout_out4_full_n;
    sc_out< sc_logic > p_chout_out4_write;
    sc_out< sc_lv<32> > p_k_out_din;
    sc_in< sc_logic > p_k_out_full_n;
    sc_out< sc_logic > p_k_out_write;
    sc_out< sc_lv<32> > p_k_out5_din;
    sc_in< sc_logic > p_k_out5_full_n;
    sc_out< sc_logic > p_k_out5_write;
    sc_out< sc_lv<32> > p_r_out_din;
    sc_in< sc_logic > p_r_out_full_n;
    sc_out< sc_logic > p_r_out_write;
    sc_out< sc_lv<32> > p_r_out6_din;
    sc_in< sc_logic > p_r_out6_full_n;
    sc_out< sc_logic > p_r_out6_write;
    sc_in< sc_lv<32> > p_chout_s;
    sc_in< sc_lv<32> > p_r_s;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    PE21(sc_module_name name);
    SC_HAS_PROCESS(PE21);

    ~PE21();

    sc_trace_file* mVcdFile;

    Systolic_Array_Cocud<1,4,32,32,32>* Systolic_Array_Cocud_U62;
    Systolic_Array_CodEe<1,2,32,32,32>* Systolic_Array_CodEe_U63;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > W_pre_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln126_fu_428_p2;
    sc_signal< sc_logic > In_pre_V_blk_n;
    sc_signal< sc_logic > W_next_V8_blk_n;
    sc_signal< sc_logic > In_next_V50_blk_n;
    sc_signal< sc_logic > row_blk_n;
    sc_signal< sc_logic > cho_blk_n;
    sc_signal< sc_logic > O_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln122_fu_402_p2;
    sc_signal< sc_logic > p_c_s_blk_n;
    sc_signal< sc_logic > p_chin_s_blk_n;
    sc_signal< sc_logic > p_k_s_blk_n;
    sc_signal< sc_logic > row_out_blk_n;
    sc_signal< sc_logic > cho_out_blk_n;
    sc_signal< sc_logic > cho_out1_blk_n;
    sc_signal< sc_logic > p_c_out_blk_n;
    sc_signal< sc_logic > p_c_out2_blk_n;
    sc_signal< sc_logic > p_chin_out_blk_n;
    sc_signal< sc_logic > p_chin_out3_blk_n;
    sc_signal< sc_logic > p_chout_out_blk_n;
    sc_signal< sc_logic > p_chout_out4_blk_n;
    sc_signal< sc_logic > p_k_out_blk_n;
    sc_signal< sc_logic > p_k_out5_blk_n;
    sc_signal< sc_logic > p_r_out_blk_n;
    sc_signal< sc_logic > p_r_out6_blk_n;
    sc_signal< sc_lv<32> > p_c_read_reg_446;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > p_chin_read_reg_451;
    sc_signal< sc_lv<32> > p_k_read_reg_456;
    sc_signal< sc_lv<1> > and_ln130_fu_377_p2;
    sc_signal< sc_lv<1> > and_ln130_reg_462;
    sc_signal< sc_lv<31> > col_fu_392_p2;
    sc_signal< sc_lv<31> > col_reg_470;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<31> > chi_fu_407_p2;
    sc_signal< sc_lv<31> > chi_reg_478;
    sc_signal< bool > ap_block_state3;
    sc_signal< sc_lv<31> > kr_fu_422_p2;
    sc_signal< sc_lv<31> > kr_reg_486;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > kc_fu_433_p2;
    sc_signal< sc_lv<32> > kc_reg_494;
    sc_signal< bool > ap_block_state5;
    sc_signal< sc_lv<32> > tmp_72_reg_499;
    sc_signal< sc_lv<32> > tmp_71_reg_504;
    sc_signal< sc_lv<32> > grp_fu_349_p2;
    sc_signal< sc_lv<32> > tmp_4_i_i_reg_509;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > O_temp_16_fu_439_p3;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<31> > col_0_i_i_reg_263;
    sc_signal< sc_lv<32> > tmp_reg_274;
    sc_signal< sc_lv<1> > icmp_ln119_fu_387_p2;
    sc_signal< sc_lv<1> > icmp_ln124_fu_417_p2;
    sc_signal< sc_lv<31> > chi_0_i_i_reg_287;
    sc_signal< sc_lv<32> > p_0_1_i_i_reg_298;
    sc_signal< sc_lv<31> > kr_0_i_i_reg_310;
    sc_signal< sc_lv<32> > p_0_2_i_i_reg_321;
    sc_signal< sc_lv<32> > kc_0_i_i_reg_333;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > icmp_ln130_fu_365_p2;
    sc_signal< sc_lv<1> > icmp_ln130_16_fu_371_p2;
    sc_signal< sc_lv<32> > zext_ln119_fu_383_p1;
    sc_signal< sc_lv<32> > zext_ln122_fu_398_p1;
    sc_signal< sc_lv<32> > zext_ln124_fu_413_p1;
    sc_signal< sc_lv<32> > grp_fu_344_p2;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_state2;
    static const sc_lv<11> ap_ST_fsm_state3;
    static const sc_lv<11> ap_ST_fsm_state4;
    static const sc_lv<11> ap_ST_fsm_state5;
    static const sc_lv<11> ap_ST_fsm_state6;
    static const sc_lv<11> ap_ST_fsm_state7;
    static const sc_lv<11> ap_ST_fsm_state8;
    static const sc_lv<11> ap_ST_fsm_state9;
    static const sc_lv<11> ap_ST_fsm_state10;
    static const sc_lv<11> ap_ST_fsm_state11;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<31> ap_const_lv31_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_In_next_V50_blk_n();
    void thread_In_next_V50_din();
    void thread_In_next_V50_write();
    void thread_In_pre_V_blk_n();
    void thread_In_pre_V_read();
    void thread_O_V_blk_n();
    void thread_O_V_din();
    void thread_O_V_write();
    void thread_O_temp_16_fu_439_p3();
    void thread_W_next_V8_blk_n();
    void thread_W_next_V8_din();
    void thread_W_next_V8_write();
    void thread_W_pre_V_blk_n();
    void thread_W_pre_V_read();
    void thread_and_ln130_fu_377_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_state1();
    void thread_ap_block_state3();
    void thread_ap_block_state5();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_chi_fu_407_p2();
    void thread_cho_blk_n();
    void thread_cho_out1_blk_n();
    void thread_cho_out1_din();
    void thread_cho_out1_write();
    void thread_cho_out_blk_n();
    void thread_cho_out_din();
    void thread_cho_out_write();
    void thread_cho_read();
    void thread_col_fu_392_p2();
    void thread_icmp_ln119_fu_387_p2();
    void thread_icmp_ln122_fu_402_p2();
    void thread_icmp_ln124_fu_417_p2();
    void thread_icmp_ln126_fu_428_p2();
    void thread_icmp_ln130_16_fu_371_p2();
    void thread_icmp_ln130_fu_365_p2();
    void thread_kc_fu_433_p2();
    void thread_kr_fu_422_p2();
    void thread_p_c_out2_blk_n();
    void thread_p_c_out2_din();
    void thread_p_c_out2_write();
    void thread_p_c_out_blk_n();
    void thread_p_c_out_din();
    void thread_p_c_out_write();
    void thread_p_c_s_blk_n();
    void thread_p_c_s_read();
    void thread_p_chin_out3_blk_n();
    void thread_p_chin_out3_din();
    void thread_p_chin_out3_write();
    void thread_p_chin_out_blk_n();
    void thread_p_chin_out_din();
    void thread_p_chin_out_write();
    void thread_p_chin_s_blk_n();
    void thread_p_chin_s_read();
    void thread_p_chout_out4_blk_n();
    void thread_p_chout_out4_din();
    void thread_p_chout_out4_write();
    void thread_p_chout_out_blk_n();
    void thread_p_chout_out_din();
    void thread_p_chout_out_write();
    void thread_p_k_out5_blk_n();
    void thread_p_k_out5_din();
    void thread_p_k_out5_write();
    void thread_p_k_out_blk_n();
    void thread_p_k_out_din();
    void thread_p_k_out_write();
    void thread_p_k_s_blk_n();
    void thread_p_k_s_read();
    void thread_p_r_out6_blk_n();
    void thread_p_r_out6_din();
    void thread_p_r_out6_write();
    void thread_p_r_out_blk_n();
    void thread_p_r_out_din();
    void thread_p_r_out_write();
    void thread_row_blk_n();
    void thread_row_out_blk_n();
    void thread_row_out_din();
    void thread_row_out_write();
    void thread_row_read();
    void thread_zext_ln119_fu_383_p1();
    void thread_zext_ln122_fu_398_p1();
    void thread_zext_ln124_fu_413_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
