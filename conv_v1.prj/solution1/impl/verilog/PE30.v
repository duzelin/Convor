// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module PE30 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        W_inter_2_1_dout,
        W_inter_2_1_empty_n,
        W_inter_2_1_read,
        In_inter_2_1_dout,
        In_inter_2_1_empty_n,
        In_inter_2_1_read,
        W_inter_3_1_din,
        W_inter_3_1_full_n,
        W_inter_3_1_write,
        In_inter_2_2_din,
        In_inter_2_2_full_n,
        In_inter_2_2_write,
        add_ln207_4_loc_dout,
        add_ln207_4_loc_empty_n,
        add_ln207_4_loc_read,
        add_ln207_loc_dout,
        add_ln207_loc_empty_n,
        add_ln207_loc_read,
        O_inter_2_1_din,
        O_inter_2_1_full_n,
        O_inter_2_1_write,
        p_c_s_dout,
        p_c_s_empty_n,
        p_c_s_read,
        p_chin_s_dout,
        p_chin_s_empty_n,
        p_chin_s_read,
        p_chout_s_dout,
        p_chout_s_empty_n,
        p_chout_s_read,
        p_k_s_dout,
        p_k_s_empty_n,
        p_k_s_read,
        p_r_s_dout,
        p_r_s_empty_n,
        p_r_s_read,
        add_ln207_loc_out_din,
        add_ln207_loc_out_full_n,
        add_ln207_loc_out_write,
        p_c_out_din,
        p_c_out_full_n,
        p_c_out_write,
        p_chin_out_din,
        p_chin_out_full_n,
        p_chin_out_write,
        p_chout_out_din,
        p_chout_out_full_n,
        p_chout_out_write,
        p_k_out_din,
        p_k_out_full_n,
        p_k_out_write,
        p_r_out_din,
        p_r_out_full_n,
        p_r_out_write
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] W_inter_2_1_dout;
input   W_inter_2_1_empty_n;
output   W_inter_2_1_read;
input  [31:0] In_inter_2_1_dout;
input   In_inter_2_1_empty_n;
output   In_inter_2_1_read;
output  [31:0] W_inter_3_1_din;
input   W_inter_3_1_full_n;
output   W_inter_3_1_write;
output  [31:0] In_inter_2_2_din;
input   In_inter_2_2_full_n;
output   In_inter_2_2_write;
input  [31:0] add_ln207_4_loc_dout;
input   add_ln207_4_loc_empty_n;
output   add_ln207_4_loc_read;
input  [31:0] add_ln207_loc_dout;
input   add_ln207_loc_empty_n;
output   add_ln207_loc_read;
output  [31:0] O_inter_2_1_din;
input   O_inter_2_1_full_n;
output   O_inter_2_1_write;
input  [31:0] p_c_s_dout;
input   p_c_s_empty_n;
output   p_c_s_read;
input  [31:0] p_chin_s_dout;
input   p_chin_s_empty_n;
output   p_chin_s_read;
input  [31:0] p_chout_s_dout;
input   p_chout_s_empty_n;
output   p_chout_s_read;
input  [31:0] p_k_s_dout;
input   p_k_s_empty_n;
output   p_k_s_read;
input  [31:0] p_r_s_dout;
input   p_r_s_empty_n;
output   p_r_s_read;
output  [31:0] add_ln207_loc_out_din;
input   add_ln207_loc_out_full_n;
output   add_ln207_loc_out_write;
output  [31:0] p_c_out_din;
input   p_c_out_full_n;
output   p_c_out_write;
output  [31:0] p_chin_out_din;
input   p_chin_out_full_n;
output   p_chin_out_write;
output  [31:0] p_chout_out_din;
input   p_chout_out_full_n;
output   p_chout_out_write;
output  [31:0] p_k_out_din;
input   p_k_out_full_n;
output   p_k_out_write;
output  [31:0] p_r_out_din;
input   p_r_out_full_n;
output   p_r_out_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg W_inter_2_1_read;
reg In_inter_2_1_read;
reg W_inter_3_1_write;
reg In_inter_2_2_write;
reg add_ln207_4_loc_read;
reg add_ln207_loc_read;
reg O_inter_2_1_write;
reg p_c_s_read;
reg p_chin_s_read;
reg p_chout_s_read;
reg p_k_s_read;
reg p_r_s_read;
reg add_ln207_loc_out_write;
reg p_c_out_write;
reg p_chin_out_write;
reg p_chout_out_write;
reg p_k_out_write;
reg p_r_out_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    W_inter_2_1_blk_n;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln126_fu_362_p2;
reg    In_inter_2_1_blk_n;
reg    W_inter_3_1_blk_n;
reg    In_inter_2_2_blk_n;
reg    add_ln207_4_loc_blk_n;
reg    add_ln207_loc_blk_n;
reg    O_inter_2_1_blk_n;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln122_fu_336_p2;
reg    p_c_s_blk_n;
reg    p_chin_s_blk_n;
reg    p_chout_s_blk_n;
reg    p_k_s_blk_n;
reg    p_r_s_blk_n;
reg    add_ln207_loc_out_blk_n;
reg    p_c_out_blk_n;
reg    p_chin_out_blk_n;
reg    p_chout_out_blk_n;
reg    p_k_out_blk_n;
reg    p_r_out_blk_n;
reg   [31:0] p_c_read_reg_380;
reg    ap_block_state1;
reg   [31:0] p_chin_read_reg_385;
reg   [31:0] p_k_read_reg_390;
wire   [0:0] and_ln130_fu_311_p2;
reg   [0:0] and_ln130_reg_396;
wire   [30:0] col_fu_326_p2;
reg   [30:0] col_reg_404;
wire    ap_CS_fsm_state2;
wire   [30:0] chi_fu_341_p2;
reg   [30:0] chi_reg_412;
reg    ap_block_state3;
wire   [30:0] kr_fu_356_p2;
reg   [30:0] kr_reg_420;
wire    ap_CS_fsm_state4;
wire   [31:0] kc_fu_367_p2;
reg   [31:0] kc_reg_428;
reg    ap_block_state5;
reg   [31:0] tmp_36_reg_433;
reg   [31:0] tmp_35_reg_438;
wire   [31:0] grp_fu_295_p2;
reg   [31:0] tmp_4_i_i_i_reg_443;
wire    ap_CS_fsm_state7;
wire   [31:0] O_temp_7_fu_373_p3;
wire    ap_CS_fsm_state11;
reg   [30:0] col_0_i_i_i_reg_209;
reg   [31:0] tmp_reg_220;
wire   [0:0] icmp_ln119_fu_321_p2;
wire   [0:0] icmp_ln124_fu_351_p2;
reg   [30:0] chi_0_i_i_i_reg_233;
reg   [31:0] p_0_1_i_i_i_reg_244;
reg   [30:0] kr_0_i_i_i_reg_256;
reg   [31:0] p_0_2_i_i_i_reg_267;
reg   [31:0] kc_0_i_i_i_reg_279;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln130_fu_299_p2;
wire   [0:0] icmp_ln130_7_fu_305_p2;
wire   [31:0] zext_ln119_fu_317_p1;
wire   [31:0] zext_ln122_fu_332_p1;
wire   [31:0] zext_ln124_fu_347_p1;
wire   [31:0] grp_fu_290_p2;
reg   [10:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
end

Systolic_Array_Cocud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
Systolic_Array_Cocud_U285(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_0_2_i_i_i_reg_267),
    .din1(tmp_4_i_i_i_reg_443),
    .ce(1'b1),
    .dout(grp_fu_290_p2)
);

Systolic_Array_CodEe #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
Systolic_Array_CodEe_U286(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_35_reg_438),
    .din1(tmp_36_reg_433),
    .ce(1'b1),
    .dout(grp_fu_295_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln119_fu_321_p2 == 1'd0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln124_fu_351_p2 == 1'd0))) begin
        chi_0_i_i_i_reg_233 <= chi_reg_412;
    end else if (((icmp_ln119_fu_321_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        chi_0_i_i_i_reg_233 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b0 == O_inter_2_1_full_n) & (icmp_ln122_fu_336_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln122_fu_336_p2 == 1'd0))) begin
        col_0_i_i_i_reg_209 <= col_reg_404;
    end else if ((~((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        col_0_i_i_i_reg_209 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        kc_0_i_i_i_reg_279 <= kc_reg_428;
    end else if (((icmp_ln124_fu_351_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        kc_0_i_i_i_reg_279 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((1'b0 == W_inter_3_1_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_2_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == W_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0))) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln126_fu_362_p2 == 1'd1))) begin
        kr_0_i_i_i_reg_256 <= kr_reg_420;
    end else if ((~((1'b0 == O_inter_2_1_full_n) & (icmp_ln122_fu_336_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln122_fu_336_p2 == 1'd1))) begin
        kr_0_i_i_i_reg_256 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((1'b0 == W_inter_3_1_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_2_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == W_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0))) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln126_fu_362_p2 == 1'd1))) begin
        p_0_1_i_i_i_reg_244 <= p_0_2_i_i_i_reg_267;
    end else if ((~((1'b0 == O_inter_2_1_full_n) & (icmp_ln122_fu_336_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln122_fu_336_p2 == 1'd1))) begin
        p_0_1_i_i_i_reg_244 <= tmp_reg_220;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        p_0_2_i_i_i_reg_267 <= O_temp_7_fu_373_p3;
    end else if (((icmp_ln124_fu_351_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        p_0_2_i_i_i_reg_267 <= p_0_1_i_i_i_reg_244;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln124_fu_351_p2 == 1'd0))) begin
        tmp_reg_220 <= p_0_1_i_i_i_reg_244;
    end else if (((icmp_ln119_fu_321_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_220 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        and_ln130_reg_396 <= and_ln130_fu_311_p2;
        p_c_read_reg_380 <= p_c_s_dout;
        p_chin_read_reg_385 <= p_chin_s_dout;
        p_k_read_reg_390 <= p_k_s_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b0 == O_inter_2_1_full_n) & (icmp_ln122_fu_336_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state3))) begin
        chi_reg_412 <= chi_fu_341_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        col_reg_404 <= col_fu_326_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((1'b0 == W_inter_3_1_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_2_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == W_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0))) & (1'b1 == ap_CS_fsm_state5))) begin
        kc_reg_428 <= kc_fu_367_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        kr_reg_420 <= kr_fu_356_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((1'b0 == W_inter_3_1_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_2_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == W_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0))) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln126_fu_362_p2 == 1'd0))) begin
        tmp_35_reg_438 <= In_inter_2_1_dout;
        tmp_36_reg_433 <= W_inter_2_1_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (1'd1 == and_ln130_reg_396))) begin
        tmp_4_i_i_i_reg_443 <= grp_fu_295_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln126_fu_362_p2 == 1'd0))) begin
        In_inter_2_1_blk_n = In_inter_2_1_empty_n;
    end else begin
        In_inter_2_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((1'b0 == W_inter_3_1_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_2_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == W_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0))) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln126_fu_362_p2 == 1'd0))) begin
        In_inter_2_1_read = 1'b1;
    end else begin
        In_inter_2_1_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln126_fu_362_p2 == 1'd0))) begin
        In_inter_2_2_blk_n = In_inter_2_2_full_n;
    end else begin
        In_inter_2_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((1'b0 == W_inter_3_1_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_2_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == W_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0))) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln126_fu_362_p2 == 1'd0))) begin
        In_inter_2_2_write = 1'b1;
    end else begin
        In_inter_2_2_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln122_fu_336_p2 == 1'd0))) begin
        O_inter_2_1_blk_n = O_inter_2_1_full_n;
    end else begin
        O_inter_2_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == O_inter_2_1_full_n) & (icmp_ln122_fu_336_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln122_fu_336_p2 == 1'd0))) begin
        O_inter_2_1_write = 1'b1;
    end else begin
        O_inter_2_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln126_fu_362_p2 == 1'd0))) begin
        W_inter_2_1_blk_n = W_inter_2_1_empty_n;
    end else begin
        W_inter_2_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((1'b0 == W_inter_3_1_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_2_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == W_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0))) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln126_fu_362_p2 == 1'd0))) begin
        W_inter_2_1_read = 1'b1;
    end else begin
        W_inter_2_1_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln126_fu_362_p2 == 1'd0))) begin
        W_inter_3_1_blk_n = W_inter_3_1_full_n;
    end else begin
        W_inter_3_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((1'b0 == W_inter_3_1_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_2_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == W_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0))) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln126_fu_362_p2 == 1'd0))) begin
        W_inter_3_1_write = 1'b1;
    end else begin
        W_inter_3_1_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln207_4_loc_blk_n = add_ln207_4_loc_empty_n;
    end else begin
        add_ln207_4_loc_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln207_4_loc_read = 1'b1;
    end else begin
        add_ln207_4_loc_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln207_loc_blk_n = add_ln207_loc_empty_n;
    end else begin
        add_ln207_loc_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln207_loc_out_blk_n = add_ln207_loc_out_full_n;
    end else begin
        add_ln207_loc_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln207_loc_out_write = 1'b1;
    end else begin
        add_ln207_loc_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln207_loc_read = 1'b1;
    end else begin
        add_ln207_loc_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln119_fu_321_p2 == 1'd0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln119_fu_321_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_c_out_blk_n = p_c_out_full_n;
    end else begin
        p_c_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_c_out_write = 1'b1;
    end else begin
        p_c_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_c_s_blk_n = p_c_s_empty_n;
    end else begin
        p_c_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_c_s_read = 1'b1;
    end else begin
        p_c_s_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_chin_out_blk_n = p_chin_out_full_n;
    end else begin
        p_chin_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_chin_out_write = 1'b1;
    end else begin
        p_chin_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_chin_s_blk_n = p_chin_s_empty_n;
    end else begin
        p_chin_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_chin_s_read = 1'b1;
    end else begin
        p_chin_s_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_chout_out_blk_n = p_chout_out_full_n;
    end else begin
        p_chout_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_chout_out_write = 1'b1;
    end else begin
        p_chout_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_chout_s_blk_n = p_chout_s_empty_n;
    end else begin
        p_chout_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_chout_s_read = 1'b1;
    end else begin
        p_chout_s_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_k_out_blk_n = p_k_out_full_n;
    end else begin
        p_k_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_k_out_write = 1'b1;
    end else begin
        p_k_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_k_s_blk_n = p_k_s_empty_n;
    end else begin
        p_k_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_k_s_read = 1'b1;
    end else begin
        p_k_s_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_r_out_blk_n = p_r_out_full_n;
    end else begin
        p_r_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_r_out_write = 1'b1;
    end else begin
        p_r_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_r_s_blk_n = p_r_s_empty_n;
    end else begin
        p_r_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_r_s_read = 1'b1;
    end else begin
        p_r_s_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln119_fu_321_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((~((1'b0 == O_inter_2_1_full_n) & (icmp_ln122_fu_336_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln122_fu_336_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~((1'b0 == O_inter_2_1_full_n) & (icmp_ln122_fu_336_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln122_fu_336_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln124_fu_351_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~(((1'b0 == W_inter_3_1_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_2_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == W_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0))) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln126_fu_362_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else if ((~(((1'b0 == W_inter_3_1_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_2_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == W_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0))) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln126_fu_362_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign In_inter_2_2_din = In_inter_2_1_dout;

assign O_inter_2_1_din = tmp_reg_220;

assign O_temp_7_fu_373_p3 = ((and_ln130_reg_396[0:0] === 1'b1) ? grp_fu_290_p2 : p_0_2_i_i_i_reg_267);

assign W_inter_3_1_din = W_inter_2_1_dout;

assign add_ln207_loc_out_din = add_ln207_loc_dout;

assign and_ln130_fu_311_p2 = (icmp_ln130_fu_299_p2 & icmp_ln130_7_fu_305_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

always @ (*) begin
    ap_block_state1 = ((p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_4_loc_empty_n) | (ap_start == 1'b0) | (p_r_out_full_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state3 = ((1'b0 == O_inter_2_1_full_n) & (icmp_ln122_fu_336_p2 == 1'd0));
end

always @ (*) begin
    ap_block_state5 = (((1'b0 == W_inter_3_1_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_2_full_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == In_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0)) | ((1'b0 == W_inter_2_1_empty_n) & (icmp_ln126_fu_362_p2 == 1'd0)));
end

assign chi_fu_341_p2 = (chi_0_i_i_i_reg_233 + 31'd1);

assign col_fu_326_p2 = (col_0_i_i_i_reg_209 + 31'd1);

assign icmp_ln119_fu_321_p2 = (($signed(zext_ln119_fu_317_p1) < $signed(p_c_read_reg_380)) ? 1'b1 : 1'b0);

assign icmp_ln122_fu_336_p2 = (($signed(zext_ln122_fu_332_p1) < $signed(p_chin_read_reg_385)) ? 1'b1 : 1'b0);

assign icmp_ln124_fu_351_p2 = (($signed(zext_ln124_fu_347_p1) < $signed(p_k_read_reg_390)) ? 1'b1 : 1'b0);

assign icmp_ln126_fu_362_p2 = ((kc_0_i_i_i_reg_279 == p_k_read_reg_390) ? 1'b1 : 1'b0);

assign icmp_ln130_7_fu_305_p2 = (($signed(p_chout_s_dout) > $signed(add_ln207_loc_dout)) ? 1'b1 : 1'b0);

assign icmp_ln130_fu_299_p2 = (($signed(p_r_s_dout) > $signed(add_ln207_4_loc_dout)) ? 1'b1 : 1'b0);

assign kc_fu_367_p2 = (kc_0_i_i_i_reg_279 + 32'd1);

assign kr_fu_356_p2 = (kr_0_i_i_i_reg_256 + 31'd1);

assign p_c_out_din = p_c_s_dout;

assign p_chin_out_din = p_chin_s_dout;

assign p_chout_out_din = p_chout_s_dout;

assign p_k_out_din = p_k_s_dout;

assign p_r_out_din = p_r_s_dout;

assign zext_ln119_fu_317_p1 = col_0_i_i_i_reg_209;

assign zext_ln122_fu_332_p1 = chi_0_i_i_i_reg_233;

assign zext_ln124_fu_347_p1 = kr_0_i_i_i_reg_256;

endmodule //PE30
