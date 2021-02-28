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


    // Module declarations
    PE32(sc_module_name name);
    SC_HAS_PROCESS(PE32);

    ~PE32();

    sc_trace_file* mVcdFile;

    Systolic_Array_Cocud<1,4,32,32,32>* Systolic_Array_Cocud_U328;
    Systolic_Array_CodEe<1,2,32,32,32>* Systolic_Array_CodEe_U329;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > W_inter_2_3_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<1> > icmp_ln122_reg_406;
    sc_signal< sc_logic > In_inter_2_3_blk_n;
    sc_signal< sc_logic > W_inter_3_3_blk_n;
    sc_signal< sc_logic > In_inter_2_4_blk_n;
    sc_signal< sc_logic > add_ln207_4_loc_blk_n;
    sc_signal< sc_logic > add_ln207_2_loc_blk_n;
    sc_signal< sc_logic > O_inter_2_3_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state12;
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
    sc_signal< sc_lv<96> > indvar_flatten13_reg_266;
    sc_signal< sc_lv<32> > tmp_reg_277;
    sc_signal< sc_lv<32> > p_c_read_reg_372;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > p_chin_read_reg_377;
    sc_signal< sc_lv<32> > p_k_read_reg_382;
    sc_signal< sc_lv<1> > and_ln130_fu_311_p2;
    sc_signal< sc_lv<1> > and_ln130_reg_387;
    sc_signal< sc_lv<96> > bound4_fu_333_p2;
    sc_signal< sc_lv<96> > bound4_reg_392;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln119_fu_343_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<31> > add_ln119_fu_348_p2;
    sc_signal< sc_lv<31> > add_ln119_reg_401;
    sc_signal< sc_lv<1> > icmp_ln122_fu_354_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln122_reg_406_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln122_reg_406_pp0_iter2_reg;
    sc_signal< sc_lv<96> > add_ln122_fu_359_p2;
    sc_signal< sc_lv<96> > add_ln122_reg_410;
    sc_signal< sc_lv<32> > tmp_28_reg_415;
    sc_signal< bool > ap_block_state5_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state8_pp0_stage1_iter1;
    sc_signal< bool > ap_block_state11_pp0_stage1_iter2;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<32> > tmp_27_reg_420;
    sc_signal< sc_lv<32> > grp_fu_295_p2;
    sc_signal< sc_lv<32> > tmp_4_i_i_i_reg_425;
    sc_signal< sc_lv<32> > O_temp_5_fu_365_p3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_state6_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state9_pp0_stage2_iter1;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< sc_lv<31> > col_0_i_i_i_reg_255;
    sc_signal< sc_lv<96> > ap_phi_mux_indvar_flatten13_phi_fu_270_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<32> > ap_phi_mux_tmp_phi_fu_282_p4;
    sc_signal< bool > ap_block_pp0_stage1_01001;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< sc_lv<1> > icmp_ln130_fu_299_p2;
    sc_signal< sc_lv<1> > icmp_ln130_5_fu_305_p2;
    sc_signal< sc_lv<32> > bound_fu_320_p0;
    sc_signal< sc_lv<64> > cast_fu_317_p1;
    sc_signal< sc_lv<32> > bound_fu_320_p1;
    sc_signal< sc_lv<64> > bound_fu_320_p2;
    sc_signal< sc_lv<64> > bound4_fu_333_p0;
    sc_signal< sc_lv<32> > bound4_fu_333_p1;
    sc_signal< sc_lv<32> > col_0_i_i_i_cast_fu_339_p1;
    sc_signal< sc_lv<32> > grp_fu_290_p2;
    sc_signal< sc_logic > grp_fu_290_ce;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< sc_logic > grp_fu_295_ce;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<96> > bound4_fu_333_p00;
    sc_signal< sc_lv<96> > bound4_fu_333_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_pp0_stage0;
    static const sc_lv<7> ap_ST_fsm_pp0_stage1;
    static const sc_lv<7> ap_ST_fsm_pp0_stage2;
    static const sc_lv<7> ap_ST_fsm_state12;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<96> ap_const_lv96_0;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<96> ap_const_lv96_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_In_inter_2_3_blk_n();
    void thread_In_inter_2_3_read();
    void thread_In_inter_2_4_blk_n();
    void thread_In_inter_2_4_din();
    void thread_In_inter_2_4_write();
    void thread_O_inter_2_3_blk_n();
    void thread_O_inter_2_3_din();
    void thread_O_inter_2_3_write();
    void thread_O_temp_5_fu_365_p3();
    void thread_W_inter_2_3_blk_n();
    void thread_W_inter_2_3_read();
    void thread_W_inter_3_3_blk_n();
    void thread_W_inter_3_3_din();
    void thread_W_inter_3_3_write();
    void thread_add_ln119_fu_348_p2();
    void thread_add_ln122_fu_359_p2();
    void thread_add_ln207_2_loc_blk_n();
    void thread_add_ln207_2_loc_out_blk_n();
    void thread_add_ln207_2_loc_out_din();
    void thread_add_ln207_2_loc_out_write();
    void thread_add_ln207_2_loc_read();
    void thread_add_ln207_4_loc_blk_n();
    void thread_add_ln207_4_loc_read();
    void thread_and_ln130_fu_311_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_01001();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state10_pp0_stage0_iter2();
    void thread_ap_block_state11_pp0_stage1_iter2();
    void thread_ap_block_state4_pp0_stage0_iter0();
    void thread_ap_block_state5_pp0_stage1_iter0();
    void thread_ap_block_state6_pp0_stage2_iter0();
    void thread_ap_block_state7_pp0_stage0_iter1();
    void thread_ap_block_state8_pp0_stage1_iter1();
    void thread_ap_block_state9_pp0_stage2_iter1();
    void thread_ap_condition_pp0_exit_iter0_state4();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_indvar_flatten13_phi_fu_270_p4();
    void thread_ap_phi_mux_tmp_phi_fu_282_p4();
    void thread_ap_ready();
    void thread_bound4_fu_333_p0();
    void thread_bound4_fu_333_p00();
    void thread_bound4_fu_333_p1();
    void thread_bound4_fu_333_p10();
    void thread_bound4_fu_333_p2();
    void thread_bound_fu_320_p0();
    void thread_bound_fu_320_p1();
    void thread_bound_fu_320_p2();
    void thread_cast_fu_317_p1();
    void thread_col_0_i_i_i_cast_fu_339_p1();
    void thread_grp_fu_290_ce();
    void thread_grp_fu_295_ce();
    void thread_icmp_ln119_fu_343_p2();
    void thread_icmp_ln122_fu_354_p2();
    void thread_icmp_ln130_5_fu_305_p2();
    void thread_icmp_ln130_fu_299_p2();
    void thread_internal_ap_ready();
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
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
