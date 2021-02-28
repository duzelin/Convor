// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _PE36_HH_
#define _PE36_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Systolic_Array_Cocud.h"
#include "Systolic_Array_CodEe.h"

namespace ap_rtl {

struct PE36 : public sc_module {
    // Port declarations 70
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
    sc_in< sc_lv<32> > W_inter_3_3_dout;
    sc_in< sc_logic > W_inter_3_3_empty_n;
    sc_out< sc_logic > W_inter_3_3_read;
    sc_in< sc_lv<32> > In_inter_3_3_dout;
    sc_in< sc_logic > In_inter_3_3_empty_n;
    sc_out< sc_logic > In_inter_3_3_read;
    sc_out< sc_lv<32> > W_inter_4_3_din;
    sc_in< sc_logic > W_inter_4_3_full_n;
    sc_out< sc_logic > W_inter_4_3_write;
    sc_out< sc_lv<32> > In_inter_3_4_din;
    sc_in< sc_logic > In_inter_3_4_full_n;
    sc_out< sc_logic > In_inter_3_4_write;
    sc_in< sc_lv<32> > add_ln207_5_loc_dout;
    sc_in< sc_logic > add_ln207_5_loc_empty_n;
    sc_out< sc_logic > add_ln207_5_loc_read;
    sc_in< sc_lv<32> > add_ln207_2_loc_dout;
    sc_in< sc_logic > add_ln207_2_loc_empty_n;
    sc_out< sc_logic > add_ln207_2_loc_read;
    sc_out< sc_lv<32> > O_inter_3_3_din;
    sc_in< sc_logic > O_inter_3_3_full_n;
    sc_out< sc_logic > O_inter_3_3_write;
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
    sc_out< sc_lv<32> > p_c_out_din;
    sc_in< sc_logic > p_c_out_full_n;
    sc_out< sc_logic > p_c_out_write;
    sc_out< sc_lv<32> > p_c_out1_din;
    sc_in< sc_logic > p_c_out1_full_n;
    sc_out< sc_logic > p_c_out1_write;
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
    sc_out< sc_lv<32> > p_k_out_din;
    sc_in< sc_logic > p_k_out_full_n;
    sc_out< sc_logic > p_k_out_write;
    sc_out< sc_lv<32> > p_k_out4_din;
    sc_in< sc_logic > p_k_out4_full_n;
    sc_out< sc_logic > p_k_out4_write;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    PE36(sc_module_name name);
    SC_HAS_PROCESS(PE36);

    ~PE36();

    sc_trace_file* mVcdFile;

    Systolic_Array_Cocud<1,4,32,32,32>* Systolic_Array_Cocud_U404;
    Systolic_Array_CodEe<1,2,32,32,32>* Systolic_Array_CodEe_U405;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > W_inter_3_3_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln126_fu_382_p2;
    sc_signal< sc_logic > In_inter_3_3_blk_n;
    sc_signal< sc_logic > W_inter_4_3_blk_n;
    sc_signal< sc_logic > In_inter_3_4_blk_n;
    sc_signal< sc_logic > add_ln207_5_loc_blk_n;
    sc_signal< sc_logic > add_ln207_2_loc_blk_n;
    sc_signal< sc_logic > O_inter_3_3_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln122_fu_356_p2;
    sc_signal< sc_logic > p_c_s_blk_n;
    sc_signal< sc_logic > p_chin_s_blk_n;
    sc_signal< sc_logic > p_chout_s_blk_n;
    sc_signal< sc_logic > p_k_s_blk_n;
    sc_signal< sc_logic > p_r_s_blk_n;
    sc_signal< sc_logic > p_c_out_blk_n;
    sc_signal< sc_logic > p_c_out1_blk_n;
    sc_signal< sc_logic > p_c_out2_blk_n;
    sc_signal< sc_logic > p_chin_out_blk_n;
    sc_signal< sc_logic > p_chin_out3_blk_n;
    sc_signal< sc_logic > p_chout_out_blk_n;
    sc_signal< sc_logic > p_k_out_blk_n;
    sc_signal< sc_logic > p_k_out4_blk_n;
    sc_signal< sc_lv<32> > p_c_read_reg_400;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > p_chin_read_reg_405;
    sc_signal< sc_lv<32> > p_k_read_reg_410;
    sc_signal< sc_lv<1> > and_ln130_fu_331_p2;
    sc_signal< sc_lv<1> > and_ln130_reg_416;
    sc_signal< sc_lv<31> > col_fu_346_p2;
    sc_signal< sc_lv<31> > col_reg_424;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<31> > chi_fu_361_p2;
    sc_signal< sc_lv<31> > chi_reg_432;
    sc_signal< bool > ap_block_state3;
    sc_signal< sc_lv<31> > kr_fu_376_p2;
    sc_signal< sc_lv<31> > kr_reg_440;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > kc_fu_387_p2;
    sc_signal< sc_lv<32> > kc_reg_448;
    sc_signal< bool > ap_block_state5;
    sc_signal< sc_lv<32> > tmp_18_reg_453;
    sc_signal< sc_lv<32> > tmp_reg_458;
    sc_signal< sc_lv<32> > grp_fu_315_p2;
    sc_signal< sc_lv<32> > tmp_4_i_i_i_reg_463;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > O_temp_1_fu_393_p3;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<31> > col_0_i_i_i_reg_229;
    sc_signal< sc_lv<32> > tmp_1_reg_240;
    sc_signal< sc_lv<1> > icmp_ln119_fu_341_p2;
    sc_signal< sc_lv<1> > icmp_ln124_fu_371_p2;
    sc_signal< sc_lv<31> > chi_0_i_i_i_reg_253;
    sc_signal< sc_lv<32> > p_0_1_i_i_i_reg_264;
    sc_signal< sc_lv<31> > kr_0_i_i_i_reg_276;
    sc_signal< sc_lv<32> > p_0_2_i_i_i_reg_287;
    sc_signal< sc_lv<32> > kc_0_i_i_i_reg_299;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > icmp_ln130_fu_319_p2;
    sc_signal< sc_lv<1> > icmp_ln130_1_fu_325_p2;
    sc_signal< sc_lv<32> > zext_ln119_fu_337_p1;
    sc_signal< sc_lv<32> > zext_ln122_fu_352_p1;
    sc_signal< sc_lv<32> > zext_ln124_fu_367_p1;
    sc_signal< sc_lv<32> > grp_fu_310_p2;
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
    void thread_In_inter_3_3_blk_n();
    void thread_In_inter_3_3_read();
    void thread_In_inter_3_4_blk_n();
    void thread_In_inter_3_4_din();
    void thread_In_inter_3_4_write();
    void thread_O_inter_3_3_blk_n();
    void thread_O_inter_3_3_din();
    void thread_O_inter_3_3_write();
    void thread_O_temp_1_fu_393_p3();
    void thread_W_inter_3_3_blk_n();
    void thread_W_inter_3_3_read();
    void thread_W_inter_4_3_blk_n();
    void thread_W_inter_4_3_din();
    void thread_W_inter_4_3_write();
    void thread_add_ln207_2_loc_blk_n();
    void thread_add_ln207_2_loc_read();
    void thread_add_ln207_5_loc_blk_n();
    void thread_add_ln207_5_loc_read();
    void thread_and_ln130_fu_331_p2();
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
    void thread_chi_fu_361_p2();
    void thread_col_fu_346_p2();
    void thread_icmp_ln119_fu_341_p2();
    void thread_icmp_ln122_fu_356_p2();
    void thread_icmp_ln124_fu_371_p2();
    void thread_icmp_ln126_fu_382_p2();
    void thread_icmp_ln130_1_fu_325_p2();
    void thread_icmp_ln130_fu_319_p2();
    void thread_internal_ap_ready();
    void thread_kc_fu_387_p2();
    void thread_kr_fu_376_p2();
    void thread_p_c_out1_blk_n();
    void thread_p_c_out1_din();
    void thread_p_c_out1_write();
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
    void thread_p_chout_out_blk_n();
    void thread_p_chout_out_din();
    void thread_p_chout_out_write();
    void thread_p_chout_s_blk_n();
    void thread_p_chout_s_read();
    void thread_p_k_out4_blk_n();
    void thread_p_k_out4_din();
    void thread_p_k_out4_write();
    void thread_p_k_out_blk_n();
    void thread_p_k_out_din();
    void thread_p_k_out_write();
    void thread_p_k_s_blk_n();
    void thread_p_k_s_read();
    void thread_p_r_s_blk_n();
    void thread_p_r_s_read();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_zext_ln119_fu_337_p1();
    void thread_zext_ln122_fu_352_p1();
    void thread_zext_ln124_fu_367_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
