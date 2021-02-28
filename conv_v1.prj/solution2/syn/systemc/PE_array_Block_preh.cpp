// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "PE_array_Block_preh.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic PE_array_Block_preh::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic PE_array_Block_preh::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> PE_array_Block_preh::ap_ST_fsm_state1 = "1";
const sc_lv<32> PE_array_Block_preh::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> PE_array_Block_preh::ap_const_lv32_3 = "11";
const bool PE_array_Block_preh::ap_const_boolean_1 = true;

PE_array_Block_preh::PE_array_Block_preh(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln207_5_out_out1_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( add_ln207_5_out_out1_full_n );

    SC_METHOD(thread_add_ln207_5_out_out1_din);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( row_empty_n );
    sensitive << ( add_ln207_5_out_out_full_n );
    sensitive << ( add_ln207_5_out_out1_full_n );
    sensitive << ( add_ln207_5_out_out2_full_n );
    sensitive << ( add_ln207_5_out_out3_full_n );
    sensitive << ( add_ln207_fu_64_p2 );

    SC_METHOD(thread_add_ln207_5_out_out1_write);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( row_empty_n );
    sensitive << ( add_ln207_5_out_out_full_n );
    sensitive << ( add_ln207_5_out_out1_full_n );
    sensitive << ( add_ln207_5_out_out2_full_n );
    sensitive << ( add_ln207_5_out_out3_full_n );

    SC_METHOD(thread_add_ln207_5_out_out2_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( add_ln207_5_out_out2_full_n );

    SC_METHOD(thread_add_ln207_5_out_out2_din);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( row_empty_n );
    sensitive << ( add_ln207_5_out_out_full_n );
    sensitive << ( add_ln207_5_out_out1_full_n );
    sensitive << ( add_ln207_5_out_out2_full_n );
    sensitive << ( add_ln207_5_out_out3_full_n );
    sensitive << ( add_ln207_fu_64_p2 );

    SC_METHOD(thread_add_ln207_5_out_out2_write);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( row_empty_n );
    sensitive << ( add_ln207_5_out_out_full_n );
    sensitive << ( add_ln207_5_out_out1_full_n );
    sensitive << ( add_ln207_5_out_out2_full_n );
    sensitive << ( add_ln207_5_out_out3_full_n );

    SC_METHOD(thread_add_ln207_5_out_out3_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( add_ln207_5_out_out3_full_n );

    SC_METHOD(thread_add_ln207_5_out_out3_din);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( row_empty_n );
    sensitive << ( add_ln207_5_out_out_full_n );
    sensitive << ( add_ln207_5_out_out1_full_n );
    sensitive << ( add_ln207_5_out_out2_full_n );
    sensitive << ( add_ln207_5_out_out3_full_n );
    sensitive << ( add_ln207_fu_64_p2 );

    SC_METHOD(thread_add_ln207_5_out_out3_write);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( row_empty_n );
    sensitive << ( add_ln207_5_out_out_full_n );
    sensitive << ( add_ln207_5_out_out1_full_n );
    sensitive << ( add_ln207_5_out_out2_full_n );
    sensitive << ( add_ln207_5_out_out3_full_n );

    SC_METHOD(thread_add_ln207_5_out_out_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( add_ln207_5_out_out_full_n );

    SC_METHOD(thread_add_ln207_5_out_out_din);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( row_empty_n );
    sensitive << ( add_ln207_5_out_out_full_n );
    sensitive << ( add_ln207_5_out_out1_full_n );
    sensitive << ( add_ln207_5_out_out2_full_n );
    sensitive << ( add_ln207_5_out_out3_full_n );
    sensitive << ( add_ln207_fu_64_p2 );

    SC_METHOD(thread_add_ln207_5_out_out_write);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( row_empty_n );
    sensitive << ( add_ln207_5_out_out_full_n );
    sensitive << ( add_ln207_5_out_out1_full_n );
    sensitive << ( add_ln207_5_out_out2_full_n );
    sensitive << ( add_ln207_5_out_out3_full_n );

    SC_METHOD(thread_add_ln207_fu_64_p2);
    sensitive << ( row_dout );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( row_empty_n );
    sensitive << ( add_ln207_5_out_out_full_n );
    sensitive << ( add_ln207_5_out_out1_full_n );
    sensitive << ( add_ln207_5_out_out2_full_n );
    sensitive << ( add_ln207_5_out_out3_full_n );

    SC_METHOD(thread_ap_done);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( row_empty_n );
    sensitive << ( add_ln207_5_out_out_full_n );
    sensitive << ( add_ln207_5_out_out1_full_n );
    sensitive << ( add_ln207_5_out_out2_full_n );
    sensitive << ( add_ln207_5_out_out3_full_n );

    SC_METHOD(thread_ap_idle);
    sensitive << ( real_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( internal_ap_ready );

    SC_METHOD(thread_internal_ap_ready);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( row_empty_n );
    sensitive << ( add_ln207_5_out_out_full_n );
    sensitive << ( add_ln207_5_out_out1_full_n );
    sensitive << ( add_ln207_5_out_out2_full_n );
    sensitive << ( add_ln207_5_out_out3_full_n );

    SC_METHOD(thread_real_start);
    sensitive << ( ap_start );
    sensitive << ( start_full_n );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_row_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( row_empty_n );

    SC_METHOD(thread_row_read);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( row_empty_n );
    sensitive << ( add_ln207_5_out_out_full_n );
    sensitive << ( add_ln207_5_out_out1_full_n );
    sensitive << ( add_ln207_5_out_out2_full_n );
    sensitive << ( add_ln207_5_out_out3_full_n );

    SC_METHOD(thread_start_out);
    sensitive << ( real_start );

    SC_METHOD(thread_start_write);
    sensitive << ( real_start );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( row_empty_n );
    sensitive << ( add_ln207_5_out_out_full_n );
    sensitive << ( add_ln207_5_out_out1_full_n );
    sensitive << ( add_ln207_5_out_out2_full_n );
    sensitive << ( add_ln207_5_out_out3_full_n );

    start_once_reg = SC_LOGIC_0;
    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "1";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "PE_array_Block_preh_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, start_full_n, "(port)start_full_n");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, start_out, "(port)start_out");
    sc_trace(mVcdFile, start_write, "(port)start_write");
    sc_trace(mVcdFile, row_dout, "(port)row_dout");
    sc_trace(mVcdFile, row_empty_n, "(port)row_empty_n");
    sc_trace(mVcdFile, row_read, "(port)row_read");
    sc_trace(mVcdFile, add_ln207_5_out_out_din, "(port)add_ln207_5_out_out_din");
    sc_trace(mVcdFile, add_ln207_5_out_out_full_n, "(port)add_ln207_5_out_out_full_n");
    sc_trace(mVcdFile, add_ln207_5_out_out_write, "(port)add_ln207_5_out_out_write");
    sc_trace(mVcdFile, add_ln207_5_out_out1_din, "(port)add_ln207_5_out_out1_din");
    sc_trace(mVcdFile, add_ln207_5_out_out1_full_n, "(port)add_ln207_5_out_out1_full_n");
    sc_trace(mVcdFile, add_ln207_5_out_out1_write, "(port)add_ln207_5_out_out1_write");
    sc_trace(mVcdFile, add_ln207_5_out_out2_din, "(port)add_ln207_5_out_out2_din");
    sc_trace(mVcdFile, add_ln207_5_out_out2_full_n, "(port)add_ln207_5_out_out2_full_n");
    sc_trace(mVcdFile, add_ln207_5_out_out2_write, "(port)add_ln207_5_out_out2_write");
    sc_trace(mVcdFile, add_ln207_5_out_out3_din, "(port)add_ln207_5_out_out3_din");
    sc_trace(mVcdFile, add_ln207_5_out_out3_full_n, "(port)add_ln207_5_out_out3_full_n");
    sc_trace(mVcdFile, add_ln207_5_out_out3_write, "(port)add_ln207_5_out_out3_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, real_start, "real_start");
    sc_trace(mVcdFile, start_once_reg, "start_once_reg");
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, internal_ap_ready, "internal_ap_ready");
    sc_trace(mVcdFile, row_blk_n, "row_blk_n");
    sc_trace(mVcdFile, add_ln207_5_out_out_blk_n, "add_ln207_5_out_out_blk_n");
    sc_trace(mVcdFile, add_ln207_5_out_out1_blk_n, "add_ln207_5_out_out1_blk_n");
    sc_trace(mVcdFile, add_ln207_5_out_out2_blk_n, "add_ln207_5_out_out2_blk_n");
    sc_trace(mVcdFile, add_ln207_5_out_out3_blk_n, "add_ln207_5_out_out3_blk_n");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, add_ln207_fu_64_p2, "add_ln207_fu_64_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

PE_array_Block_preh::~PE_array_Block_preh() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void PE_array_Block_preh::thread_ap_clk_no_reset_() {
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
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, row_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out2_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out3_full_n.read())))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        start_once_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, real_start.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_0, internal_ap_ready.read()))) {
            start_once_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, internal_ap_ready.read())) {
            start_once_reg = ap_const_logic_0;
        }
    }
}

void PE_array_Block_preh::thread_add_ln207_5_out_out1_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        add_ln207_5_out_out1_blk_n = add_ln207_5_out_out1_full_n.read();
    } else {
        add_ln207_5_out_out1_blk_n = ap_const_logic_1;
    }
}

void PE_array_Block_preh::thread_add_ln207_5_out_out1_din() {
    add_ln207_5_out_out1_din = add_ln207_fu_64_p2.read();
}

void PE_array_Block_preh::thread_add_ln207_5_out_out1_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, row_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out2_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out3_full_n.read())))) {
        add_ln207_5_out_out1_write = ap_const_logic_1;
    } else {
        add_ln207_5_out_out1_write = ap_const_logic_0;
    }
}

void PE_array_Block_preh::thread_add_ln207_5_out_out2_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        add_ln207_5_out_out2_blk_n = add_ln207_5_out_out2_full_n.read();
    } else {
        add_ln207_5_out_out2_blk_n = ap_const_logic_1;
    }
}

void PE_array_Block_preh::thread_add_ln207_5_out_out2_din() {
    add_ln207_5_out_out2_din = add_ln207_fu_64_p2.read();
}

void PE_array_Block_preh::thread_add_ln207_5_out_out2_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, row_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out2_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out3_full_n.read())))) {
        add_ln207_5_out_out2_write = ap_const_logic_1;
    } else {
        add_ln207_5_out_out2_write = ap_const_logic_0;
    }
}

void PE_array_Block_preh::thread_add_ln207_5_out_out3_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        add_ln207_5_out_out3_blk_n = add_ln207_5_out_out3_full_n.read();
    } else {
        add_ln207_5_out_out3_blk_n = ap_const_logic_1;
    }
}

void PE_array_Block_preh::thread_add_ln207_5_out_out3_din() {
    add_ln207_5_out_out3_din = add_ln207_fu_64_p2.read();
}

void PE_array_Block_preh::thread_add_ln207_5_out_out3_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, row_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out2_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out3_full_n.read())))) {
        add_ln207_5_out_out3_write = ap_const_logic_1;
    } else {
        add_ln207_5_out_out3_write = ap_const_logic_0;
    }
}

void PE_array_Block_preh::thread_add_ln207_5_out_out_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        add_ln207_5_out_out_blk_n = add_ln207_5_out_out_full_n.read();
    } else {
        add_ln207_5_out_out_blk_n = ap_const_logic_1;
    }
}

void PE_array_Block_preh::thread_add_ln207_5_out_out_din() {
    add_ln207_5_out_out_din = add_ln207_fu_64_p2.read();
}

void PE_array_Block_preh::thread_add_ln207_5_out_out_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, row_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out2_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out3_full_n.read())))) {
        add_ln207_5_out_out_write = ap_const_logic_1;
    } else {
        add_ln207_5_out_out_write = ap_const_logic_0;
    }
}

void PE_array_Block_preh::thread_add_ln207_fu_64_p2() {
    add_ln207_fu_64_p2 = (!row_dout.read().is_01() || !ap_const_lv32_3.is_01())? sc_lv<32>(): (sc_biguint<32>(row_dout.read()) + sc_biguint<32>(ap_const_lv32_3));
}

void PE_array_Block_preh::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void PE_array_Block_preh::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, row_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out2_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out3_full_n.read()));
}

void PE_array_Block_preh::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, row_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out2_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out3_full_n.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void PE_array_Block_preh::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void PE_array_Block_preh::thread_ap_ready() {
    ap_ready = internal_ap_ready.read();
}

void PE_array_Block_preh::thread_internal_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, row_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out2_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out3_full_n.read())))) {
        internal_ap_ready = ap_const_logic_1;
    } else {
        internal_ap_ready = ap_const_logic_0;
    }
}

void PE_array_Block_preh::thread_real_start() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_full_n.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()))) {
        real_start = ap_const_logic_0;
    } else {
        real_start = ap_start.read();
    }
}

void PE_array_Block_preh::thread_row_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        row_blk_n = row_empty_n.read();
    } else {
        row_blk_n = ap_const_logic_1;
    }
}

void PE_array_Block_preh::thread_row_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, row_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out2_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, add_ln207_5_out_out3_full_n.read())))) {
        row_read = ap_const_logic_1;
    } else {
        row_read = ap_const_logic_0;
    }
}

void PE_array_Block_preh::thread_start_out() {
    start_out = real_start.read();
}

void PE_array_Block_preh::thread_start_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, real_start.read()))) {
        start_write = ap_const_logic_1;
    } else {
        start_write = ap_const_logic_0;
    }
}

void PE_array_Block_preh::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_state1;
break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}

}
