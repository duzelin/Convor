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

#include "Systolic_Array_CodEe.h"
#include "Systolic_Array_CoeOg.h"

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


    // Module declarations
    PE21(sc_module_name name);
    SC_HAS_PROCESS(PE21);

    ~PE21();

    sc_trace_file* mVcdFile;

    Systolic_Array_CodEe<1,4,32,32,32>* Systolic_Array_CodEe_U66;
    Systolic_Array_CoeOg<1,2,32,32,32>* Systolic_Array_CoeOg_U67;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > W_pre_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<1> > icmp_ln122_reg_442;
    sc_signal< sc_logic > In_pre_V_blk_n;
    sc_signal< sc_logic > W_next_V8_blk_n;
    sc_signal< sc_logic > In_next_V50_blk_n;
    sc_signal< sc_logic > row_blk_n;
    sc_signal< sc_logic > cho_blk_n;
    sc_signal< sc_logic > O_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state12;
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
    sc_signal< sc_lv<96> > indvar_flatten13_reg_290;
    sc_signal< sc_lv<32> > tmp_reg_301;
    sc_signal< sc_lv<32> > p_c_read_reg_408;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > p_chin_read_reg_413;
    sc_signal< sc_lv<32> > p_k_read_reg_418;
    sc_signal< sc_lv<1> > and_ln130_fu_347_p2;
    sc_signal< sc_lv<1> > and_ln130_reg_423;
    sc_signal< sc_lv<96> > bound4_fu_369_p2;
    sc_signal< sc_lv<96> > bound4_reg_428;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln119_fu_379_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<31> > add_ln119_fu_384_p2;
    sc_signal< sc_lv<31> > add_ln119_reg_437;
    sc_signal< sc_lv<1> > icmp_ln122_fu_390_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln122_reg_442_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln122_reg_442_pp0_iter2_reg;
    sc_signal< sc_lv<96> > add_ln122_fu_395_p2;
    sc_signal< sc_lv<96> > add_ln122_reg_446;
    sc_signal< sc_lv<32> > tmp_72_reg_451;
    sc_signal< bool > ap_block_state5_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state8_pp0_stage1_iter1;
    sc_signal< bool > ap_block_state11_pp0_stage1_iter2;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<32> > tmp_71_reg_456;
    sc_signal< sc_lv<32> > grp_fu_319_p2;
    sc_signal< sc_lv<32> > tmp_4_i_i_reg_461;
    sc_signal< sc_lv<32> > O_temp_16_fu_401_p3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_state6_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state9_pp0_stage2_iter1;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< sc_lv<31> > col_0_i_i_reg_279;
    sc_signal< sc_lv<96> > ap_phi_mux_indvar_flatten13_phi_fu_294_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<32> > ap_phi_mux_tmp_phi_fu_306_p4;
    sc_signal< bool > ap_block_pp0_stage1_01001;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< sc_lv<1> > icmp_ln130_fu_335_p2;
    sc_signal< sc_lv<1> > icmp_ln130_16_fu_341_p2;
    sc_signal< sc_lv<32> > bound_fu_356_p0;
    sc_signal< sc_lv<64> > cast_fu_353_p1;
    sc_signal< sc_lv<32> > bound_fu_356_p1;
    sc_signal< sc_lv<64> > bound_fu_356_p2;
    sc_signal< sc_lv<64> > bound4_fu_369_p0;
    sc_signal< sc_lv<32> > bound4_fu_369_p1;
    sc_signal< sc_lv<32> > col_0_i_i_cast_fu_375_p1;
    sc_signal< sc_lv<32> > grp_fu_314_p2;
    sc_signal< sc_logic > grp_fu_314_ce;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< sc_logic > grp_fu_319_ce;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<96> > bound4_fu_369_p00;
    sc_signal< sc_lv<96> > bound4_fu_369_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_pp0_stage0;
    static const sc_lv<7> ap_ST_fsm_pp0_stage1;
    static const sc_lv<7> ap_ST_fsm_pp0_stage2;
    static const sc_lv<7> ap_ST_fsm_state12;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
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
    void thread_In_next_V50_blk_n();
    void thread_In_next_V50_din();
    void thread_In_next_V50_write();
    void thread_In_pre_V_blk_n();
    void thread_In_pre_V_read();
    void thread_O_V_blk_n();
    void thread_O_V_din();
    void thread_O_V_write();
    void thread_O_temp_16_fu_401_p3();
    void thread_W_next_V8_blk_n();
    void thread_W_next_V8_din();
    void thread_W_next_V8_write();
    void thread_W_pre_V_blk_n();
    void thread_W_pre_V_read();
    void thread_add_ln119_fu_384_p2();
    void thread_add_ln122_fu_395_p2();
    void thread_and_ln130_fu_347_p2();
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
    void thread_ap_phi_mux_indvar_flatten13_phi_fu_294_p4();
    void thread_ap_phi_mux_tmp_phi_fu_306_p4();
    void thread_ap_ready();
    void thread_bound4_fu_369_p0();
    void thread_bound4_fu_369_p00();
    void thread_bound4_fu_369_p1();
    void thread_bound4_fu_369_p10();
    void thread_bound4_fu_369_p2();
    void thread_bound_fu_356_p0();
    void thread_bound_fu_356_p1();
    void thread_bound_fu_356_p2();
    void thread_cast_fu_353_p1();
    void thread_cho_blk_n();
    void thread_cho_out1_blk_n();
    void thread_cho_out1_din();
    void thread_cho_out1_write();
    void thread_cho_out_blk_n();
    void thread_cho_out_din();
    void thread_cho_out_write();
    void thread_cho_read();
    void thread_col_0_i_i_cast_fu_375_p1();
    void thread_grp_fu_314_ce();
    void thread_grp_fu_319_ce();
    void thread_icmp_ln119_fu_379_p2();
    void thread_icmp_ln122_fu_390_p2();
    void thread_icmp_ln130_16_fu_341_p2();
    void thread_icmp_ln130_fu_335_p2();
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
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif