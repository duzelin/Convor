// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _PE32_HH_
#define _PE32_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Systolic_Array_Cocud.h"
#include "Systolic_Array_CodEe.h"

namespace ap_rtl {

struct PE32 : public sc_module {
    // Port declarations 73
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<32> > W_inter_2_3_dout;
    sc_in< sc_logic > W_inter_2_3_empty_n;
    sc_out< sc_logic > W_inter_2_3_read;
    sc_in< sc_lv<32> > In_inter_2_3_dout;
    sc_in< sc_logic > In_inter_2_3_empty_n;
    sc_out< sc_logic > In_inter_2_3_read;
    sc_out< sc_lv<32> > W_inter_3_3_din;
    sc_in< sc_logic > W_inter_3_3_full_n;
    sc_out< sc_logic > W_inter_3_3_write;
    sc_out< sc_lv<32> > In_inter_2_4_din;
    sc_in< sc_logic > In_inter_2_4_full_n;
    sc_out< sc_logic > In_inter_2_4_write;
    sc_in< sc_lv<32> > add_ln207_4_loc_dout;
    sc_in< sc_logic > add_ln207_4_loc_empty_n;
    sc_out< sc_logic > add_ln207_4_loc_read;
    sc_in< sc_lv<32> > add_ln207_2_loc_dout;
    sc_in< sc_logic > add_ln207_2_loc_empty_n;
    sc_out< sc_logic > add_ln207_2_loc_read;
    sc_out< sc_lv<32> > O_inter_2_3_din;
    sc_in< sc_logic > O_inter_2_3_full_n;
    sc_out< sc_logic > O_inter_2_3_write;
    sc_in< sc_lv<32> > p_c_s_dout;
    sc_in< sc_logic > p_c_s_empty_n;
    sc_out< sc_logic > p_c_s_read;
    sc_in< sc_lv<32> > p_chin_s_dout;
    sc_in< sc_logic > p_chin_s_empty_n;
    sc_out< sc_logic > p_chin_s_read;
    sc_in< sc_lv<32> > p_chout_s_dout;
    sc_in< sc_logic > p_chout_s_empty_n;
    sc_out< sc_logic > p_chout_s_read;
    sc_in< sc_lv<32> > p_k_s_dout;
    sc_in< sc_logic > p_k_s_empty_n;
    sc_out< sc_logic > p_k_s_read;
    sc_in< sc_lv<32> > p_r_s_dout;
    sc_in< sc_logic > p_r_s_empty_n;
    sc_out< sc_logic > p_r_s_read;
    sc_out< sc_lv<32> > add_ln207_2_loc_out_din;
    sc_in< sc_logic > add_ln207_2_loc_out_full_n;
    sc_out< sc_logic > add_ln207_2_loc_out_write;
    sc_out< sc_lv<32> > p_c_out_din;
    sc_in< sc_logic > p_c_out_full_n;
    sc_out< sc_logic > p_c_out_write;
    sc_out< sc_lv<32> > p_c_out1_din;
    sc_in< sc_logic > p_c_out1_full_n;
    sc_out< sc_logic > p_c_out1_write;
    sc_out< sc_lv<32> > p_chin_out_din;
    sc_in< sc_logic > p_chin_out_full_n;
    sc_out< sc_logic > p_chin_out_write;
    sc_out< sc_lv<32> > p_chin_out2_din;
    sc_in< sc_logic > p_chin_out2_full_n;
    sc_out< sc_logic > p_chin_out2_write;
    sc_out< sc_lv<32> > p_chout_out_din;
    sc_in< sc_logic > p_chout_out_full_n;
    sc_out< sc_logic > p_chout_out_write;
    sc_out< sc_lv<32> > p_k_out_din;
    sc_in< sc_logic > p_k_out_full_n;
    sc_out< sc_logic > p_k_out_write;
    sc_out< sc_lv<32> > p_k_out3_din;
    sc_in< sc_logic > p_k_out3_full_n;
    sc_out< sc_logic > p_k_out3_write;
    sc_out< sc_lv<32> > p_r_out_din;
    sc_in< sc_logic > p_r_out_full_n;
    sc_out< sc_logic > p_r_out_write;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    PE32(sc_module_name name);
    SC_HAS_PROCESS(PE32);

    ~PE32();

    sc_trace_file* mVcdFile;

    Systolic_Array_Cocud<1,4,32,32,32>* Systolic_Array_Cocud_U325;
    Systolic_Array_CodEe<1,2,32,32,32>* Systolic_Array_CodEe_U326;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > W_inter_2_3_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln126_fu_392_p2;
    sc_signal< sc_logic > In_inter_2_3_blk_n;
    sc_signal< sc_logic > W_inter_3_3_blk_n;
    sc_signal< sc_logic > In_inter_2_4_blk_n;
    sc_signal< sc_logic > add_ln207_4_loc_blk_n;
    sc_signal< sc_logic > add_ln207_2_loc_blk_n;
    sc_signal< sc_logic > O_inter_2_3_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln122_fu_366_p2;
    sc_signal< sc_logic > p_c_s_blk_n;
    sc_signal< sc_logic > p_chin_s_blk_n;
    sc_signal< sc_logic > p_chout_s_blk_n;
    sc_signal< sc_logic > p_k_s_blk_n;
    sc_signal< sc_logic > p_r_s_blk_n;
    sc_signal< sc_logic > add_ln207_2_loc_out_blk_n;
    sc_signal< sc_logic > p_c_out_blk_n;
    sc_signal< sc_logic > p_c_out1_blk_n;
    sc_signal< sc_logic > p_chin_out_blk_n;
    sc_signal< sc_logic > p_chin_out2_blk_n;
    sc_signal< sc_logic > p_chout_out_blk_n;
    sc_signal< sc_logic > p_k_out_blk_n;
    sc_signal< sc_logic > p_k_out3_blk_n;
    sc_signal< sc_logic > p_r_out_blk_n;
    sc_signal< sc_lv<32> > p_c_read_reg_410;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > p_chin_read_reg_415;
    sc_signal< sc_lv<32> > p_k_read_reg_420;
    sc_signal< sc_lv<1> > and_ln130_fu_341_p2;
    sc_signal< sc_lv<1> > and_ln130_reg_426;
    sc_signal< sc_lv<31> > col_fu_356_p2;
    sc_signal< sc_lv<31> > col_reg_434;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<31> > chi_fu_371_p2;
    sc_signal< sc_lv<31> > chi_reg_442;
    sc_signal< bool > ap_block_state3;
    sc_signal< sc_lv<31> > kr_fu_386_p2;
    sc_signal< sc_lv<31> > kr_reg_450;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > kc_fu_397_p2;
    sc_signal< sc_lv<32> > kc_reg_458;
    sc_signal< bool > ap_block_state5;
    sc_signal< sc_lv<32> > tmp_28_reg_463;
    sc_signal< sc_lv<32> > tmp_27_reg_468;
    sc_signal< sc_lv<32> > grp_fu_325_p2;
    sc_signal< sc_lv<32> > tmp_4_i_i_i_reg_473;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > O_temp_5_fu_403_p3;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<31> > col_0_i_i_i_reg_239;
    sc_signal< sc_lv<32> > tmp_reg_250;
    sc_signal< sc_lv<1> > icmp_ln119_fu_351_p2;
    sc_signal< sc_lv<1> > icmp_ln124_fu_381_p2;
    sc_signal< sc_lv<31> > chi_0_i_i_i_reg_263;
    sc_signal< sc_lv<32> > p_0_1_i_i_i_reg_274;
    sc_signal< sc_lv<31> > kr_0_i_i_i_reg_286;
    sc_signal< sc_lv<32> > p_0_2_i_i_i_reg_297;
    sc_signal< sc_lv<32> > kc_0_i_i_i_reg_309;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > icmp_ln130_fu_329_p2;
    sc_signal< sc_lv<1> > icmp_ln130_5_fu_335_p2;
    sc_signal< sc_lv<32> > zext_ln119_fu_347_p1;
    sc_signal< sc_lv<32> > zext_ln122_fu_362_p1;
    sc_signal< sc_lv<32> > zext_ln124_fu_377_p1;
    sc_signal< sc_lv<32> > grp_fu_320_p2;
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
    void thread_In_inter_2_3_blk_n();
    void thread_In_inter_2_3_read();
    void thread_In_inter_2_4_blk_n();
    void thread_In_inter_2_4_din();
    void thread_In_inter_2_4_write();
    void thread_O_inter_2_3_blk_n();
    void thread_O_inter_2_3_din();
    void thread_O_inter_2_3_write();
    void thread_O_temp_5_fu_403_p3();
    void thread_W_inter_2_3_blk_n();
    void thread_W_inter_2_3_read();
    void thread_W_inter_3_3_blk_n();
    void thread_W_inter_3_3_din();
    void thread_W_inter_3_3_write();
    void thread_add_ln207_2_loc_blk_n();
    void thread_add_ln207_2_loc_out_blk_n();
    void thread_add_ln207_2_loc_out_din();
    void thread_add_ln207_2_loc_out_write();
    void thread_add_ln207_2_loc_read();
    void thread_add_ln207_4_loc_blk_n();
    void thread_add_ln207_4_loc_read();
    void thread_and_ln130_fu_341_p2();
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
    void thread_chi_fu_371_p2();
    void thread_col_fu_356_p2();
    void thread_icmp_ln119_fu_351_p2();
    void thread_icmp_ln122_fu_366_p2();
    void thread_icmp_ln124_fu_381_p2();
    void thread_icmp_ln126_fu_392_p2();
    void thread_icmp_ln130_5_fu_335_p2();
    void thread_icmp_ln130_fu_329_p2();
    void thread_internal_ap_ready();
    void thread_kc_fu_397_p2();
    void thread_kr_fu_386_p2();
    void thread_p_c_out1_blk_n();
    void thread_p_c_out1_din();
    void thread_p_c_out1_write();
    void thread_p_c_out_blk_n();
    void thread_p_c_out_din();
    void thread_p_c_out_write();
    void thread_p_c_s_blk_n();
    void thread_p_c_s_read();
    void thread_p_chin_out2_blk_n();
    void thread_p_chin_out2_din();
    void thread_p_chin_out2_write();
    void thread_p_chin_out_blk_n();
    void thread_p_chin_out_din();
    void thread_p_chin_out_write();
    void thread_p_chin_s_blk_n();
    void thread_p_chin_s_read();
    void thread_p_chout_out_blk_n();
    void thread_p_chout_out_din();
    void thread_p_chout_out_write();
    void thread_p_chout_s_blk_n();
    void thread_p_chout_s_read();
    void thread_p_k_out3_blk_n();
    void thread_p_k_out3_din();
    void thread_p_k_out3_write();
    void thread_p_k_out_blk_n();
    void thread_p_k_out_din();
    void thread_p_k_out_write();
    void thread_p_k_s_blk_n();
    void thread_p_k_s_read();
    void thread_p_r_out_blk_n();
    void thread_p_r_out_din();
    void thread_p_r_out_write();
    void thread_p_r_s_blk_n();
    void thread_p_r_s_read();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_zext_ln119_fu_347_p1();
    void thread_zext_ln122_fu_362_p1();
    void thread_zext_ln124_fu_377_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
