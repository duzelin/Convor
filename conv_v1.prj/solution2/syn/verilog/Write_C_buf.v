// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Write_C_buf (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        Out_buf_address0,
        Out_buf_ce0,
        Out_buf_q0,
        Out_buf_address1,
        Out_buf_ce1,
        Out_buf_we1,
        Out_buf_d1,
        m_axi_Out_ddr_AWVALID,
        m_axi_Out_ddr_AWREADY,
        m_axi_Out_ddr_AWADDR,
        m_axi_Out_ddr_AWID,
        m_axi_Out_ddr_AWLEN,
        m_axi_Out_ddr_AWSIZE,
        m_axi_Out_ddr_AWBURST,
        m_axi_Out_ddr_AWLOCK,
        m_axi_Out_ddr_AWCACHE,
        m_axi_Out_ddr_AWPROT,
        m_axi_Out_ddr_AWQOS,
        m_axi_Out_ddr_AWREGION,
        m_axi_Out_ddr_AWUSER,
        m_axi_Out_ddr_WVALID,
        m_axi_Out_ddr_WREADY,
        m_axi_Out_ddr_WDATA,
        m_axi_Out_ddr_WSTRB,
        m_axi_Out_ddr_WLAST,
        m_axi_Out_ddr_WID,
        m_axi_Out_ddr_WUSER,
        m_axi_Out_ddr_ARVALID,
        m_axi_Out_ddr_ARREADY,
        m_axi_Out_ddr_ARADDR,
        m_axi_Out_ddr_ARID,
        m_axi_Out_ddr_ARLEN,
        m_axi_Out_ddr_ARSIZE,
        m_axi_Out_ddr_ARBURST,
        m_axi_Out_ddr_ARLOCK,
        m_axi_Out_ddr_ARCACHE,
        m_axi_Out_ddr_ARPROT,
        m_axi_Out_ddr_ARQOS,
        m_axi_Out_ddr_ARREGION,
        m_axi_Out_ddr_ARUSER,
        m_axi_Out_ddr_RVALID,
        m_axi_Out_ddr_RREADY,
        m_axi_Out_ddr_RDATA,
        m_axi_Out_ddr_RLAST,
        m_axi_Out_ddr_RID,
        m_axi_Out_ddr_RUSER,
        m_axi_Out_ddr_RRESP,
        m_axi_Out_ddr_BVALID,
        m_axi_Out_ddr_BREADY,
        m_axi_Out_ddr_BRESP,
        m_axi_Out_ddr_BID,
        m_axi_Out_ddr_BUSER,
        Out_ddr_offset,
        Out_ddr_offset1,
        row,
        p_c_s,
        p_chout_s
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state12 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] Out_buf_address0;
output   Out_buf_ce0;
input  [31:0] Out_buf_q0;
output  [8:0] Out_buf_address1;
output   Out_buf_ce1;
output   Out_buf_we1;
output  [31:0] Out_buf_d1;
output   m_axi_Out_ddr_AWVALID;
input   m_axi_Out_ddr_AWREADY;
output  [31:0] m_axi_Out_ddr_AWADDR;
output  [0:0] m_axi_Out_ddr_AWID;
output  [31:0] m_axi_Out_ddr_AWLEN;
output  [2:0] m_axi_Out_ddr_AWSIZE;
output  [1:0] m_axi_Out_ddr_AWBURST;
output  [1:0] m_axi_Out_ddr_AWLOCK;
output  [3:0] m_axi_Out_ddr_AWCACHE;
output  [2:0] m_axi_Out_ddr_AWPROT;
output  [3:0] m_axi_Out_ddr_AWQOS;
output  [3:0] m_axi_Out_ddr_AWREGION;
output  [0:0] m_axi_Out_ddr_AWUSER;
output   m_axi_Out_ddr_WVALID;
input   m_axi_Out_ddr_WREADY;
output  [31:0] m_axi_Out_ddr_WDATA;
output  [3:0] m_axi_Out_ddr_WSTRB;
output   m_axi_Out_ddr_WLAST;
output  [0:0] m_axi_Out_ddr_WID;
output  [0:0] m_axi_Out_ddr_WUSER;
output   m_axi_Out_ddr_ARVALID;
input   m_axi_Out_ddr_ARREADY;
output  [31:0] m_axi_Out_ddr_ARADDR;
output  [0:0] m_axi_Out_ddr_ARID;
output  [31:0] m_axi_Out_ddr_ARLEN;
output  [2:0] m_axi_Out_ddr_ARSIZE;
output  [1:0] m_axi_Out_ddr_ARBURST;
output  [1:0] m_axi_Out_ddr_ARLOCK;
output  [3:0] m_axi_Out_ddr_ARCACHE;
output  [2:0] m_axi_Out_ddr_ARPROT;
output  [3:0] m_axi_Out_ddr_ARQOS;
output  [3:0] m_axi_Out_ddr_ARREGION;
output  [0:0] m_axi_Out_ddr_ARUSER;
input   m_axi_Out_ddr_RVALID;
output   m_axi_Out_ddr_RREADY;
input  [31:0] m_axi_Out_ddr_RDATA;
input   m_axi_Out_ddr_RLAST;
input  [0:0] m_axi_Out_ddr_RID;
input  [0:0] m_axi_Out_ddr_RUSER;
input  [1:0] m_axi_Out_ddr_RRESP;
input   m_axi_Out_ddr_BVALID;
output   m_axi_Out_ddr_BREADY;
input  [1:0] m_axi_Out_ddr_BRESP;
input  [0:0] m_axi_Out_ddr_BID;
input  [0:0] m_axi_Out_ddr_BUSER;
input  [29:0] Out_ddr_offset;
input  [63:0] Out_ddr_offset1;
input  [31:0] row;
input  [31:0] p_c_s;
input  [31:0] p_chout_s;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg Out_buf_ce0;
reg Out_buf_ce1;
reg Out_buf_we1;
reg m_axi_Out_ddr_AWVALID;
reg m_axi_Out_ddr_WVALID;
reg m_axi_Out_ddr_BREADY;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    Out_ddr_blk_n_AW;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln297_reg_460;
reg   [0:0] icmp_ln297_reg_460_pp0_iter1_reg;
reg    Out_ddr_blk_n_W;
reg    ap_enable_reg_pp0_iter3;
reg   [0:0] icmp_ln297_reg_460_pp0_iter2_reg;
reg    Out_ddr_blk_n_B;
reg    ap_enable_reg_pp0_iter8;
reg   [0:0] icmp_ln297_reg_460_pp0_iter7_reg;
reg   [63:0] p_2_rec_reg_183;
reg   [31:0] cho_0_reg_194;
wire   [63:0] bound_fu_217_p2;
reg   [63:0] bound_reg_411;
wire   [63:0] sext_fu_223_p1;
reg   [63:0] sext_reg_416;
wire   [0:0] icmp_ln293_fu_236_p2;
wire    ap_CS_fsm_state2;
wire   [63:0] add_ln293_fu_241_p2;
reg   [63:0] add_ln293_reg_425;
wire   [30:0] select_ln293_fu_247_p3;
reg   [30:0] select_ln293_reg_430;
wire   [2:0] select_ln293_1_fu_261_p3;
reg   [2:0] select_ln293_1_reg_435;
wire   [31:0] zext_ln293_fu_269_p1;
reg   [31:0] zext_ln293_reg_440;
wire  signed [31:0] mul_ln293_fu_273_p2;
reg  signed [31:0] mul_ln293_reg_445;
wire  signed [9:0] trunc_ln299_fu_278_p1;
reg  signed [9:0] trunc_ln299_reg_450;
wire   [63:0] p_1_idx8_fu_282_p2;
reg   [63:0] p_1_idx8_reg_455;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_state5_io;
wire    ap_block_state6_pp0_stage0_iter3;
reg    ap_block_state6_io;
wire    ap_block_state7_pp0_stage0_iter4;
wire    ap_block_state8_pp0_stage0_iter5;
wire    ap_block_state9_pp0_stage0_iter6;
wire    ap_block_state10_pp0_stage0_iter7;
reg    ap_block_state11_pp0_stage0_iter8;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln297_fu_292_p2;
reg   [0:0] icmp_ln297_reg_460_pp0_iter3_reg;
reg   [0:0] icmp_ln297_reg_460_pp0_iter4_reg;
reg   [0:0] icmp_ln297_reg_460_pp0_iter5_reg;
reg   [0:0] icmp_ln297_reg_460_pp0_iter6_reg;
wire   [63:0] add_ln299_2_fu_298_p2;
reg   [31:0] Out_ddr_addr_reg_469;
reg   [31:0] Out_ddr_addr_reg_469_pp0_iter1_reg;
wire   [9:0] add_ln299_1_fu_348_p2;
reg   [9:0] add_ln299_1_reg_475;
wire   [9:0] add_ln301_1_fu_374_p2;
reg   [9:0] add_ln301_1_reg_480;
wire   [31:0] cho_fu_380_p2;
reg   [31:0] Out_buf_load_reg_495;
wire   [30:0] c_fu_394_p2;
wire    ap_CS_fsm_state12;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg   [63:0] indvar_flatten_reg_138;
reg   [2:0] r_0_reg_149;
reg   [30:0] c_0_reg_160;
reg   [63:0] p_1_idx_reg_171;
wire  signed [63:0] sext_ln299_fu_386_p1;
wire  signed [63:0] sext_ln301_fu_390_p1;
wire   [63:0] sum_fu_309_p2;
reg    ap_block_pp0_stage0_01001;
wire  signed [31:0] cast1_fu_213_p0;
wire   [31:0] bound_fu_217_p0;
wire   [31:0] bound_fu_217_p1;
wire   [31:0] zext_ln295_fu_227_p1;
wire  signed [31:0] icmp_ln295_fu_231_p1;
wire   [0:0] icmp_ln295_fu_231_p2;
wire   [2:0] add_ln293_1_fu_255_p2;
wire  signed [31:0] mul_ln293_fu_273_p0;
wire   [2:0] mul_ln293_fu_273_p1;
wire  signed [31:0] icmp_ln297_fu_292_p1;
wire   [63:0] sum1_fu_304_p2;
wire  signed [31:0] mul_ln299_fu_320_p1;
wire   [31:0] mul_ln299_fu_320_p2;
wire  signed [31:0] trunc_ln299_2_fu_329_p0;
wire  signed [9:0] trunc_ln299_2_fu_329_p1;
wire   [9:0] trunc_ln299_3_fu_338_p1;
wire   [9:0] trunc_ln299_1_fu_325_p1;
wire   [9:0] add_ln299_fu_342_p2;
wire   [9:0] mul_ln299_1_fu_333_p2;
wire  signed [31:0] mul_ln301_fu_354_p0;
wire   [2:0] mul_ln301_fu_354_p1;
wire  signed [31:0] mul_ln301_fu_354_p2;
wire  signed [31:0] mul_ln301_1_fu_359_p1;
wire   [31:0] mul_ln301_1_fu_359_p2;
wire   [9:0] add_ln301_fu_368_p2;
wire   [9:0] trunc_ln301_fu_364_p1;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [63:0] bound_fu_217_p00;
wire   [63:0] bound_fu_217_p10;
wire   [31:0] mul_ln293_fu_273_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln293_fu_236_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end else if (((icmp_ln293_fu_236_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter8 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        c_0_reg_160 <= c_fu_394_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        c_0_reg_160 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln297_fu_292_p2 == 1'd1))) begin
        cho_0_reg_194 <= cho_fu_380_p2;
    end else if (((icmp_ln293_fu_236_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        cho_0_reg_194 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        indvar_flatten_reg_138 <= add_ln293_reg_425;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_138 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        p_1_idx_reg_171 <= p_1_idx8_reg_455;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_1_idx_reg_171 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln297_fu_292_p2 == 1'd1))) begin
        p_2_rec_reg_183 <= add_ln299_2_fu_298_p2;
    end else if (((icmp_ln293_fu_236_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        p_2_rec_reg_183 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        r_0_reg_149 <= select_ln293_1_reg_435;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        r_0_reg_149 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln297_reg_460_pp0_iter1_reg == 1'd1))) begin
        Out_buf_load_reg_495 <= Out_buf_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln297_fu_292_p2 == 1'd1))) begin
        Out_ddr_addr_reg_469 <= sum_fu_309_p2;
        add_ln299_1_reg_475 <= add_ln299_1_fu_348_p2;
        add_ln301_1_reg_480 <= add_ln301_1_fu_374_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Out_ddr_addr_reg_469_pp0_iter1_reg <= Out_ddr_addr_reg_469;
        icmp_ln297_reg_460 <= icmp_ln297_fu_292_p2;
        icmp_ln297_reg_460_pp0_iter1_reg <= icmp_ln297_reg_460;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln293_reg_425 <= add_ln293_fu_241_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        bound_reg_411 <= bound_fu_217_p2;
        sext_reg_416[29 : 0] <= sext_fu_223_p1[29 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln297_reg_460_pp0_iter2_reg <= icmp_ln297_reg_460_pp0_iter1_reg;
        icmp_ln297_reg_460_pp0_iter3_reg <= icmp_ln297_reg_460_pp0_iter2_reg;
        icmp_ln297_reg_460_pp0_iter4_reg <= icmp_ln297_reg_460_pp0_iter3_reg;
        icmp_ln297_reg_460_pp0_iter5_reg <= icmp_ln297_reg_460_pp0_iter4_reg;
        icmp_ln297_reg_460_pp0_iter6_reg <= icmp_ln297_reg_460_pp0_iter5_reg;
        icmp_ln297_reg_460_pp0_iter7_reg <= icmp_ln297_reg_460_pp0_iter6_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln293_fu_236_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        mul_ln293_reg_445 <= mul_ln293_fu_273_p2;
        select_ln293_1_reg_435 <= select_ln293_1_fu_261_p3;
        select_ln293_reg_430 <= select_ln293_fu_247_p3;
        trunc_ln299_reg_450 <= trunc_ln299_fu_278_p1;
        zext_ln293_reg_440[2 : 0] <= zext_ln293_fu_269_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_1_idx8_reg_455 <= p_1_idx8_fu_282_p2;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Out_buf_ce0 = 1'b1;
    end else begin
        Out_buf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Out_buf_ce1 = 1'b1;
    end else begin
        Out_buf_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln297_reg_460 == 1'd1))) begin
        Out_buf_we1 = 1'b1;
    end else begin
        Out_buf_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln297_reg_460_pp0_iter1_reg == 1'd1))) begin
        Out_ddr_blk_n_AW = m_axi_Out_ddr_AWREADY;
    end else begin
        Out_ddr_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln297_reg_460_pp0_iter7_reg == 1'd1))) begin
        Out_ddr_blk_n_B = m_axi_Out_ddr_BVALID;
    end else begin
        Out_ddr_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln297_reg_460_pp0_iter2_reg == 1'd1))) begin
        Out_ddr_blk_n_W = m_axi_Out_ddr_WREADY;
    end else begin
        Out_ddr_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if ((icmp_ln297_fu_292_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (icmp_ln293_fu_236_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln293_fu_236_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln297_reg_460_pp0_iter1_reg == 1'd1))) begin
        m_axi_Out_ddr_AWVALID = 1'b1;
    end else begin
        m_axi_Out_ddr_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln297_reg_460_pp0_iter7_reg == 1'd1))) begin
        m_axi_Out_ddr_BREADY = 1'b1;
    end else begin
        m_axi_Out_ddr_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln297_reg_460_pp0_iter2_reg == 1'd1))) begin
        m_axi_Out_ddr_WVALID = 1'b1;
    end else begin
        m_axi_Out_ddr_WVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln293_fu_236_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln297_fu_292_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((ap_enable_reg_pp0_iter7 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((icmp_ln297_fu_292_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter7 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Out_buf_address0 = sext_ln299_fu_386_p1;

assign Out_buf_address1 = sext_ln301_fu_390_p1;

assign Out_buf_d1 = 32'd0;

assign add_ln293_1_fu_255_p2 = (3'd1 + r_0_reg_149);

assign add_ln293_fu_241_p2 = (indvar_flatten_reg_138 + 64'd1);

assign add_ln299_1_fu_348_p2 = (add_ln299_fu_342_p2 + mul_ln299_1_fu_333_p2);

assign add_ln299_2_fu_298_p2 = (p_2_rec_reg_183 + 64'd1);

assign add_ln299_fu_342_p2 = (trunc_ln299_3_fu_338_p1 + trunc_ln299_1_fu_325_p1);

assign add_ln301_1_fu_374_p2 = (add_ln301_fu_368_p2 + trunc_ln301_fu_364_p1);

assign add_ln301_fu_368_p2 = (trunc_ln299_3_fu_338_p1 + mul_ln299_1_fu_333_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((m_axi_Out_ddr_BVALID == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln297_reg_460_pp0_iter7_reg == 1'd1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state5_io)) | ((m_axi_Out_ddr_BVALID == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln297_reg_460_pp0_iter7_reg == 1'd1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state6_io)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state5_io)) | ((m_axi_Out_ddr_BVALID == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln297_reg_460_pp0_iter7_reg == 1'd1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state6_io)));
end

assign ap_block_state10_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state11_pp0_stage0_iter8 = ((m_axi_Out_ddr_BVALID == 1'b0) & (icmp_ln297_reg_460_pp0_iter7_reg == 1'd1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_io = ((m_axi_Out_ddr_AWREADY == 1'b0) & (icmp_ln297_reg_460_pp0_iter1_reg == 1'd1));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_io = ((m_axi_Out_ddr_WREADY == 1'b0) & (icmp_ln297_reg_460_pp0_iter2_reg == 1'd1));
end

assign ap_block_state6_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign bound_fu_217_p0 = bound_fu_217_p00;

assign bound_fu_217_p00 = $unsigned(cast1_fu_213_p0);

assign bound_fu_217_p1 = bound_fu_217_p10;

assign bound_fu_217_p10 = row;

assign bound_fu_217_p2 = (bound_fu_217_p0 * bound_fu_217_p1);

assign c_fu_394_p2 = (select_ln293_reg_430 + 31'd1);

assign cast1_fu_213_p0 = p_c_s;

assign cho_fu_380_p2 = (32'd1 + cho_0_reg_194);

assign icmp_ln293_fu_236_p2 = ((indvar_flatten_reg_138 == bound_reg_411) ? 1'b1 : 1'b0);

assign icmp_ln295_fu_231_p1 = p_c_s;

assign icmp_ln295_fu_231_p2 = (($signed(zext_ln295_fu_227_p1) < $signed(icmp_ln295_fu_231_p1)) ? 1'b1 : 1'b0);

assign icmp_ln297_fu_292_p1 = p_chout_s;

assign icmp_ln297_fu_292_p2 = (($signed(cho_0_reg_194) < $signed(icmp_ln297_fu_292_p1)) ? 1'b1 : 1'b0);

assign m_axi_Out_ddr_ARADDR = 32'd0;

assign m_axi_Out_ddr_ARBURST = 2'd0;

assign m_axi_Out_ddr_ARCACHE = 4'd0;

assign m_axi_Out_ddr_ARID = 1'd0;

assign m_axi_Out_ddr_ARLEN = 32'd0;

assign m_axi_Out_ddr_ARLOCK = 2'd0;

assign m_axi_Out_ddr_ARPROT = 3'd0;

assign m_axi_Out_ddr_ARQOS = 4'd0;

assign m_axi_Out_ddr_ARREGION = 4'd0;

assign m_axi_Out_ddr_ARSIZE = 3'd0;

assign m_axi_Out_ddr_ARUSER = 1'd0;

assign m_axi_Out_ddr_ARVALID = 1'b0;

assign m_axi_Out_ddr_AWADDR = Out_ddr_addr_reg_469_pp0_iter1_reg;

assign m_axi_Out_ddr_AWBURST = 2'd0;

assign m_axi_Out_ddr_AWCACHE = 4'd0;

assign m_axi_Out_ddr_AWID = 1'd0;

assign m_axi_Out_ddr_AWLEN = 32'd1;

assign m_axi_Out_ddr_AWLOCK = 2'd0;

assign m_axi_Out_ddr_AWPROT = 3'd0;

assign m_axi_Out_ddr_AWQOS = 4'd0;

assign m_axi_Out_ddr_AWREGION = 4'd0;

assign m_axi_Out_ddr_AWSIZE = 3'd0;

assign m_axi_Out_ddr_AWUSER = 1'd0;

assign m_axi_Out_ddr_RREADY = 1'b0;

assign m_axi_Out_ddr_WDATA = Out_buf_load_reg_495;

assign m_axi_Out_ddr_WID = 1'd0;

assign m_axi_Out_ddr_WLAST = 1'b0;

assign m_axi_Out_ddr_WSTRB = 4'd15;

assign m_axi_Out_ddr_WUSER = 1'd0;

assign mul_ln293_fu_273_p0 = p_c_s;

assign mul_ln293_fu_273_p1 = mul_ln293_fu_273_p10;

assign mul_ln293_fu_273_p10 = select_ln293_1_fu_261_p3;

assign mul_ln293_fu_273_p2 = ($signed(mul_ln293_fu_273_p0) * $signed({{1'b0}, {mul_ln293_fu_273_p1}}));

assign mul_ln299_1_fu_333_p2 = ($signed(trunc_ln299_2_fu_329_p1) * $signed(trunc_ln299_reg_450));

assign mul_ln299_fu_320_p1 = p_chout_s;

assign mul_ln299_fu_320_p2 = ($signed(mul_ln293_reg_445) * $signed(mul_ln299_fu_320_p1));

assign mul_ln301_1_fu_359_p1 = p_c_s;

assign mul_ln301_1_fu_359_p2 = ($signed(mul_ln301_fu_354_p2) * $signed(mul_ln301_1_fu_359_p1));

assign mul_ln301_fu_354_p0 = p_chout_s;

assign mul_ln301_fu_354_p1 = zext_ln293_reg_440;

assign mul_ln301_fu_354_p2 = ($signed(mul_ln301_fu_354_p0) * $signed({{1'b0}, {mul_ln301_fu_354_p1}}));

assign p_1_idx8_fu_282_p2 = (p_2_rec_reg_183 + p_1_idx_reg_171);

assign select_ln293_1_fu_261_p3 = ((icmp_ln295_fu_231_p2[0:0] === 1'b1) ? r_0_reg_149 : add_ln293_1_fu_255_p2);

assign select_ln293_fu_247_p3 = ((icmp_ln295_fu_231_p2[0:0] === 1'b1) ? c_0_reg_160 : 31'd0);

assign sext_fu_223_p1 = Out_ddr_offset;

assign sext_ln299_fu_386_p1 = $signed(add_ln299_1_reg_475);

assign sext_ln301_fu_390_p1 = $signed(add_ln301_1_reg_480);

assign sum1_fu_304_p2 = (Out_ddr_offset1 + p_1_idx8_fu_282_p2);

assign sum_fu_309_p2 = (sum1_fu_304_p2 + sext_reg_416);

assign trunc_ln299_1_fu_325_p1 = mul_ln299_fu_320_p2[9:0];

assign trunc_ln299_2_fu_329_p0 = p_chout_s;

assign trunc_ln299_2_fu_329_p1 = trunc_ln299_2_fu_329_p0[9:0];

assign trunc_ln299_3_fu_338_p1 = cho_0_reg_194[9:0];

assign trunc_ln299_fu_278_p1 = select_ln293_fu_247_p3[9:0];

assign trunc_ln301_fu_364_p1 = mul_ln301_1_fu_359_p2[9:0];

assign zext_ln293_fu_269_p1 = select_ln293_1_fu_261_p3;

assign zext_ln295_fu_227_p1 = c_0_reg_160;

always @ (posedge ap_clk) begin
    sext_reg_416[63:30] <= 34'b0000000000000000000000000000000000;
    zext_ln293_reg_440[31:3] <= 29'b00000000000000000000000000000;
end

endmodule //Write_C_buf
