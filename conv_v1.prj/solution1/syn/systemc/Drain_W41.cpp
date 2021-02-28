// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Drain_W41.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Drain_W41::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Drain_W41::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<5> Drain_W41::ap_ST_fsm_state1 = "1";
const sc_lv<5> Drain_W41::ap_ST_fsm_state2 = "10";
const sc_lv<5> Drain_W41::ap_ST_fsm_state3 = "100";
const sc_lv<5> Drain_W41::ap_ST_fsm_state4 = "1000";
const sc_lv<5> Drain_W41::ap_ST_fsm_state5 = "10000";
const sc_lv<32> Drain_W41::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> Drain_W41::ap_const_lv32_4 = "100";
const sc_lv<1> Drain_W41::ap_const_lv1_0 = "0";
const sc_lv<32> Drain_W41::ap_const_lv32_1 = "1";
const sc_lv<32> Drain_W41::ap_const_lv32_2 = "10";
const sc_lv<32> Drain_W41::ap_const_lv32_3 = "11";
const sc_lv<31> Drain_W41::ap_const_lv31_0 = "0000000000000000000000000000000";
const sc_lv<1> Drain_W41::ap_const_lv1_1 = "1";
const sc_lv<31> Drain_W41::ap_const_lv31_1 = "1";
const bool Drain_W41::ap_const_boolean_1 = true;

Drain_W41::Drain_W41(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_W_next_V4_blk_n);
    sensitive << ( W_next_V4_empty_n );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( icmp_ln170_fu_167_p2 );

    SC_METHOD(thread_W_next_V4_read);
    sensitive << ( W_next_V4_empty_n );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( icmp_ln170_fu_167_p2 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( p_c_s_empty_n );
    sensitive << ( p_chin_s_empty_n );
    sensitive << ( p_k_s_empty_n );

    SC_METHOD(thread_ap_block_state5);
    sensitive << ( W_next_V4_empty_n );
    sensitive << ( icmp_ln170_fu_167_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln164_fu_126_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln164_fu_126_p2 );

    SC_METHOD(thread_chi_fu_146_p2);
    sensitive << ( chi_0_i_i_reg_89 );

    SC_METHOD(thread_col_fu_131_p2);
    sensitive << ( col_0_i_i_reg_78 );

    SC_METHOD(thread_icmp_ln164_fu_126_p2);
    sensitive << ( p_c_read_reg_178 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln164_fu_122_p1 );

    SC_METHOD(thread_icmp_ln166_fu_141_p2);
    sensitive << ( p_chin_read_reg_183 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln166_fu_137_p1 );

    SC_METHOD(thread_icmp_ln168_fu_156_p2);
    sensitive << ( p_k_read_reg_188 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln168_fu_152_p1 );

    SC_METHOD(thread_icmp_ln170_fu_167_p2);
    sensitive << ( W_next_V4_empty_n );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( icmp_ln170_fu_167_p2 );
    sensitive << ( p_k_read_reg_188 );
    sensitive << ( kc_0_i_i_reg_111 );

    SC_METHOD(thread_kc_fu_172_p2);
    sensitive << ( kc_0_i_i_reg_111 );

    SC_METHOD(thread_kr_fu_161_p2);
    sensitive << ( kr_0_i_i_reg_100 );

    SC_METHOD(thread_p_c_s_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( p_c_s_empty_n );

    SC_METHOD(thread_p_c_s_read);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( p_c_s_empty_n );
    sensitive << ( p_chin_s_empty_n );
    sensitive << ( p_k_s_empty_n );

    SC_METHOD(thread_p_chin_s_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( p_chin_s_empty_n );

    SC_METHOD(thread_p_chin_s_read);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( p_c_s_empty_n );
    sensitive << ( p_chin_s_empty_n );
    sensitive << ( p_k_s_empty_n );

    SC_METHOD(thread_p_k_s_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( p_k_s_empty_n );

    SC_METHOD(thread_p_k_s_read);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( p_c_s_empty_n );
    sensitive << ( p_chin_s_empty_n );
    sensitive << ( p_k_s_empty_n );

    SC_METHOD(thread_zext_ln164_fu_122_p1);
    sensitive << ( col_0_i_i_reg_78 );

    SC_METHOD(thread_zext_ln166_fu_137_p1);
    sensitive << ( chi_0_i_i_reg_89 );

    SC_METHOD(thread_zext_ln168_fu_152_p1);
    sensitive << ( kr_0_i_i_reg_100 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( W_next_V4_empty_n );
    sensitive << ( p_c_s_empty_n );
    sensitive << ( p_chin_s_empty_n );
    sensitive << ( p_k_s_empty_n );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( icmp_ln170_fu_167_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln166_fu_141_p2 );
    sensitive << ( icmp_ln164_fu_126_p2 );
    sensitive << ( icmp_ln168_fu_156_p2 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "00001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Drain_W41_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, W_next_V4_dout, "(port)W_next_V4_dout");
    sc_trace(mVcdFile, W_next_V4_empty_n, "(port)W_next_V4_empty_n");
    sc_trace(mVcdFile, W_next_V4_read, "(port)W_next_V4_read");
    sc_trace(mVcdFile, p_c_s_dout, "(port)p_c_s_dout");
    sc_trace(mVcdFile, p_c_s_empty_n, "(port)p_c_s_empty_n");
    sc_trace(mVcdFile, p_c_s_read, "(port)p_c_s_read");
    sc_trace(mVcdFile, p_chin_s_dout, "(port)p_chin_s_dout");
    sc_trace(mVcdFile, p_chin_s_empty_n, "(port)p_chin_s_empty_n");
    sc_trace(mVcdFile, p_chin_s_read, "(port)p_chin_s_read");
    sc_trace(mVcdFile, p_k_s_dout, "(port)p_k_s_dout");
    sc_trace(mVcdFile, p_k_s_empty_n, "(port)p_k_s_empty_n");
    sc_trace(mVcdFile, p_k_s_read, "(port)p_k_s_read");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, W_next_V4_blk_n, "W_next_V4_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, icmp_ln170_fu_167_p2, "icmp_ln170_fu_167_p2");
    sc_trace(mVcdFile, p_c_s_blk_n, "p_c_s_blk_n");
    sc_trace(mVcdFile, p_chin_s_blk_n, "p_chin_s_blk_n");
    sc_trace(mVcdFile, p_k_s_blk_n, "p_k_s_blk_n");
    sc_trace(mVcdFile, p_c_read_reg_178, "p_c_read_reg_178");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, p_chin_read_reg_183, "p_chin_read_reg_183");
    sc_trace(mVcdFile, p_k_read_reg_188, "p_k_read_reg_188");
    sc_trace(mVcdFile, col_fu_131_p2, "col_fu_131_p2");
    sc_trace(mVcdFile, col_reg_197, "col_reg_197");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, chi_fu_146_p2, "chi_fu_146_p2");
    sc_trace(mVcdFile, chi_reg_205, "chi_reg_205");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, kr_fu_161_p2, "kr_fu_161_p2");
    sc_trace(mVcdFile, kr_reg_213, "kr_reg_213");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, kc_fu_172_p2, "kc_fu_172_p2");
    sc_trace(mVcdFile, ap_block_state5, "ap_block_state5");
    sc_trace(mVcdFile, col_0_i_i_reg_78, "col_0_i_i_reg_78");
    sc_trace(mVcdFile, icmp_ln166_fu_141_p2, "icmp_ln166_fu_141_p2");
    sc_trace(mVcdFile, chi_0_i_i_reg_89, "chi_0_i_i_reg_89");
    sc_trace(mVcdFile, icmp_ln164_fu_126_p2, "icmp_ln164_fu_126_p2");
    sc_trace(mVcdFile, icmp_ln168_fu_156_p2, "icmp_ln168_fu_156_p2");
    sc_trace(mVcdFile, kr_0_i_i_reg_100, "kr_0_i_i_reg_100");
    sc_trace(mVcdFile, kc_0_i_i_reg_111, "kc_0_i_i_reg_111");
    sc_trace(mVcdFile, zext_ln164_fu_122_p1, "zext_ln164_fu_122_p1");
    sc_trace(mVcdFile, zext_ln166_fu_137_p1, "zext_ln166_fu_137_p1");
    sc_trace(mVcdFile, zext_ln168_fu_152_p1, "zext_ln168_fu_152_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

Drain_W41::~Drain_W41() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void Drain_W41::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln164_fu_126_p2.read()))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln168_fu_156_p2.read()))) {
        chi_0_i_i_reg_89 = chi_reg_205.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln164_fu_126_p2.read(), ap_const_lv1_1))) {
        chi_0_i_i_reg_89 = ap_const_lv31_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln166_fu_141_p2.read()))) {
        col_0_i_i_reg_78 = col_reg_197.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, p_c_s_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_chin_s_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_k_s_empty_n.read())))) {
        col_0_i_i_reg_78 = ap_const_lv31_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(icmp_ln170_fu_167_p2.read(), ap_const_lv1_0) && 
         !(esl_seteq<1,1,1>(icmp_ln170_fu_167_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, W_next_V4_empty_n.read())))) {
        kc_0_i_i_reg_111 = kc_fu_172_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln168_fu_156_p2.read()))) {
        kc_0_i_i_reg_111 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         !(esl_seteq<1,1,1>(icmp_ln170_fu_167_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, W_next_V4_empty_n.read())) && 
         esl_seteq<1,1,1>(icmp_ln170_fu_167_p2.read(), ap_const_lv1_1))) {
        kr_0_i_i_reg_100 = kr_reg_213.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(icmp_ln166_fu_141_p2.read(), ap_const_lv1_1))) {
        kr_0_i_i_reg_100 = ap_const_lv31_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        chi_reg_205 = chi_fu_146_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        col_reg_197 = col_fu_131_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        kr_reg_213 = kr_fu_161_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, p_c_s_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_chin_s_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_k_s_empty_n.read())))) {
        p_c_read_reg_178 = p_c_s_dout.read();
        p_chin_read_reg_183 = p_chin_s_dout.read();
        p_k_read_reg_188 = p_k_s_dout.read();
    }
}

void Drain_W41::thread_W_next_V4_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(icmp_ln170_fu_167_p2.read(), ap_const_lv1_0))) {
        W_next_V4_blk_n = W_next_V4_empty_n.read();
    } else {
        W_next_V4_blk_n = ap_const_logic_1;
    }
}

void Drain_W41::thread_W_next_V4_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(icmp_ln170_fu_167_p2.read(), ap_const_lv1_0) && 
         !(esl_seteq<1,1,1>(icmp_ln170_fu_167_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, W_next_V4_empty_n.read())))) {
        W_next_V4_read = ap_const_logic_1;
    } else {
        W_next_V4_read = ap_const_logic_0;
    }
}

void Drain_W41::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Drain_W41::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void Drain_W41::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void Drain_W41::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void Drain_W41::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void Drain_W41::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, p_c_s_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_chin_s_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_k_s_empty_n.read()));
}

void Drain_W41::thread_ap_block_state5() {
    ap_block_state5 = (esl_seteq<1,1,1>(icmp_ln170_fu_167_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, W_next_V4_empty_n.read()));
}

void Drain_W41::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln164_fu_126_p2.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void Drain_W41::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Drain_W41::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln164_fu_126_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void Drain_W41::thread_chi_fu_146_p2() {
    chi_fu_146_p2 = (!chi_0_i_i_reg_89.read().is_01() || !ap_const_lv31_1.is_01())? sc_lv<31>(): (sc_biguint<31>(chi_0_i_i_reg_89.read()) + sc_biguint<31>(ap_const_lv31_1));
}

void Drain_W41::thread_col_fu_131_p2() {
    col_fu_131_p2 = (!col_0_i_i_reg_78.read().is_01() || !ap_const_lv31_1.is_01())? sc_lv<31>(): (sc_biguint<31>(col_0_i_i_reg_78.read()) + sc_biguint<31>(ap_const_lv31_1));
}

void Drain_W41::thread_icmp_ln164_fu_126_p2() {
    icmp_ln164_fu_126_p2 = (!zext_ln164_fu_122_p1.read().is_01() || !p_c_read_reg_178.read().is_01())? sc_lv<1>(): (sc_bigint<32>(zext_ln164_fu_122_p1.read()) < sc_bigint<32>(p_c_read_reg_178.read()));
}

void Drain_W41::thread_icmp_ln166_fu_141_p2() {
    icmp_ln166_fu_141_p2 = (!zext_ln166_fu_137_p1.read().is_01() || !p_chin_read_reg_183.read().is_01())? sc_lv<1>(): (sc_bigint<32>(zext_ln166_fu_137_p1.read()) < sc_bigint<32>(p_chin_read_reg_183.read()));
}

void Drain_W41::thread_icmp_ln168_fu_156_p2() {
    icmp_ln168_fu_156_p2 = (!zext_ln168_fu_152_p1.read().is_01() || !p_k_read_reg_188.read().is_01())? sc_lv<1>(): (sc_bigint<32>(zext_ln168_fu_152_p1.read()) < sc_bigint<32>(p_k_read_reg_188.read()));
}

void Drain_W41::thread_icmp_ln170_fu_167_p2() {
    icmp_ln170_fu_167_p2 = (!kc_0_i_i_reg_111.read().is_01() || !p_k_read_reg_188.read().is_01())? sc_lv<1>(): sc_lv<1>(kc_0_i_i_reg_111.read() == p_k_read_reg_188.read());
}

void Drain_W41::thread_kc_fu_172_p2() {
    kc_fu_172_p2 = (!kc_0_i_i_reg_111.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(kc_0_i_i_reg_111.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void Drain_W41::thread_kr_fu_161_p2() {
    kr_fu_161_p2 = (!kr_0_i_i_reg_100.read().is_01() || !ap_const_lv31_1.is_01())? sc_lv<31>(): (sc_biguint<31>(kr_0_i_i_reg_100.read()) + sc_biguint<31>(ap_const_lv31_1));
}

void Drain_W41::thread_p_c_s_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        p_c_s_blk_n = p_c_s_empty_n.read();
    } else {
        p_c_s_blk_n = ap_const_logic_1;
    }
}

void Drain_W41::thread_p_c_s_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, p_c_s_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_chin_s_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_k_s_empty_n.read())))) {
        p_c_s_read = ap_const_logic_1;
    } else {
        p_c_s_read = ap_const_logic_0;
    }
}

void Drain_W41::thread_p_chin_s_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        p_chin_s_blk_n = p_chin_s_empty_n.read();
    } else {
        p_chin_s_blk_n = ap_const_logic_1;
    }
}

void Drain_W41::thread_p_chin_s_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, p_c_s_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_chin_s_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_k_s_empty_n.read())))) {
        p_chin_s_read = ap_const_logic_1;
    } else {
        p_chin_s_read = ap_const_logic_0;
    }
}

void Drain_W41::thread_p_k_s_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        p_k_s_blk_n = p_k_s_empty_n.read();
    } else {
        p_k_s_blk_n = ap_const_logic_1;
    }
}

void Drain_W41::thread_p_k_s_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, p_c_s_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_chin_s_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_k_s_empty_n.read())))) {
        p_k_s_read = ap_const_logic_1;
    } else {
        p_k_s_read = ap_const_logic_0;
    }
}

void Drain_W41::thread_zext_ln164_fu_122_p1() {
    zext_ln164_fu_122_p1 = esl_zext<32,31>(col_0_i_i_reg_78.read());
}

void Drain_W41::thread_zext_ln166_fu_137_p1() {
    zext_ln166_fu_137_p1 = esl_zext<32,31>(chi_0_i_i_reg_89.read());
}

void Drain_W41::thread_zext_ln168_fu_152_p1() {
    zext_ln168_fu_152_p1 = esl_zext<32,31>(kr_0_i_i_reg_100.read());
}

void Drain_W41::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, p_c_s_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_chin_s_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, p_k_s_empty_n.read())))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln164_fu_126_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln166_fu_141_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln168_fu_156_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && !(esl_seteq<1,1,1>(icmp_ln170_fu_167_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, W_next_V4_empty_n.read())) && esl_seteq<1,1,1>(icmp_ln170_fu_167_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(icmp_ln170_fu_167_p2.read(), ap_const_lv1_0) && !(esl_seteq<1,1,1>(icmp_ln170_fu_167_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, W_next_V4_empty_n.read())))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        default : 
            ap_NS_fsm = "XXXXX";
            break;
    }
}

}

