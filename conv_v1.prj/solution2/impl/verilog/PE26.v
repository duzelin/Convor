// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module PE26 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        W_inter_1_1_dout,
        W_inter_1_1_empty_n,
        W_inter_1_1_read,
        In_inter_1_1_dout,
        In_inter_1_1_empty_n,
        In_inter_1_1_read,
        W_inter_2_1_din,
        W_inter_2_1_full_n,
        W_inter_2_1_write,
        In_inter_1_2_din,
        In_inter_1_2_full_n,
        In_inter_1_2_write,
        add_ln207_3_loc_dout,
        add_ln207_3_loc_empty_n,
        add_ln207_3_loc_read,
        add_ln207_loc_dout,
        add_ln207_loc_empty_n,
        add_ln207_loc_read,
        O_inter_1_1_din,
        O_inter_1_1_full_n,
        O_inter_1_1_write,
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

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_pp0_stage0 = 7'd8;
parameter    ap_ST_fsm_pp0_stage1 = 7'd16;
parameter    ap_ST_fsm_pp0_stage2 = 7'd32;
parameter    ap_ST_fsm_state12 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] W_inter_1_1_dout;
input   W_inter_1_1_empty_n;
output   W_inter_1_1_read;
input  [31:0] In_inter_1_1_dout;
input   In_inter_1_1_empty_n;
output   In_inter_1_1_read;
output  [31:0] W_inter_2_1_din;
input   W_inter_2_1_full_n;
output   W_inter_2_1_write;
output  [31:0] In_inter_1_2_din;
input   In_inter_1_2_full_n;
output   In_inter_1_2_write;
input  [31:0] add_ln207_3_loc_dout;
input   add_ln207_3_loc_empty_n;
output   add_ln207_3_loc_read;
input  [31:0] add_ln207_loc_dout;
input   add_ln207_loc_empty_n;
output   add_ln207_loc_read;
output  [31:0] O_inter_1_1_din;
input   O_inter_1_1_full_n;
output   O_inter_1_1_write;
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
reg W_inter_1_1_read;
reg In_inter_1_1_read;
reg W_inter_2_1_write;
reg In_inter_1_2_write;
reg add_ln207_3_loc_read;
reg add_ln207_loc_read;
reg O_inter_1_1_write;
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
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    W_inter_1_1_blk_n;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage1;
reg   [0:0] icmp_ln122_reg_376;
reg    In_inter_1_1_blk_n;
reg    W_inter_2_1_blk_n;
reg    In_inter_1_2_blk_n;
reg    add_ln207_3_loc_blk_n;
reg    add_ln207_loc_blk_n;
reg    O_inter_1_1_blk_n;
wire    ap_CS_fsm_state12;
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
reg   [95:0] indvar_flatten13_reg_236;
reg   [31:0] tmp_reg_247;
reg   [31:0] p_c_read_reg_342;
reg    ap_block_state1;
reg   [31:0] p_chin_read_reg_347;
reg   [31:0] p_k_read_reg_352;
wire   [0:0] and_ln130_fu_281_p2;
reg   [0:0] and_ln130_reg_357;
wire   [95:0] bound4_fu_303_p2;
reg   [95:0] bound4_reg_362;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln119_fu_313_p2;
wire    ap_CS_fsm_state3;
wire   [30:0] add_ln119_fu_318_p2;
reg   [30:0] add_ln119_reg_371;
wire   [0:0] icmp_ln122_fu_324_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state4_pp0_stage0_iter0;
wire    ap_block_state7_pp0_stage0_iter1;
wire    ap_block_state10_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln122_reg_376_pp0_iter1_reg;
reg   [0:0] icmp_ln122_reg_376_pp0_iter2_reg;
wire   [95:0] add_ln122_fu_329_p2;
reg   [95:0] add_ln122_reg_380;
reg   [31:0] tmp_52_reg_385;
reg    ap_block_state5_pp0_stage1_iter0;
wire    ap_block_state8_pp0_stage1_iter1;
wire    ap_block_state11_pp0_stage1_iter2;
reg    ap_block_pp0_stage1_11001;
reg   [31:0] tmp_51_reg_390;
wire   [31:0] grp_fu_265_p2;
reg   [31:0] tmp_4_i_i_i_reg_395;
wire   [31:0] O_temp_11_fu_335_p3;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state4;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_state6_pp0_stage2_iter0;
wire    ap_block_state9_pp0_stage2_iter1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_CS_fsm_pp0_stage2;
reg    ap_block_pp0_stage1_subdone;
reg   [30:0] col_0_i_i_i_reg_225;
reg   [95:0] ap_phi_mux_indvar_flatten13_phi_fu_240_p4;
wire    ap_block_pp0_stage0;
reg   [31:0] ap_phi_mux_tmp_phi_fu_252_p4;
reg    ap_block_pp0_stage1_01001;
wire    ap_block_pp0_stage2;
wire   [0:0] icmp_ln130_fu_269_p2;
wire   [0:0] icmp_ln130_11_fu_275_p2;
wire   [31:0] bound_fu_290_p0;
wire   [63:0] cast_fu_287_p1;
wire   [31:0] bound_fu_290_p1;
wire   [63:0] bound_fu_290_p2;
wire   [63:0] bound4_fu_303_p0;
wire   [31:0] bound4_fu_303_p1;
wire   [31:0] col_0_i_i_i_cast_fu_309_p1;
wire   [31:0] grp_fu_260_p2;
reg    grp_fu_260_ce;
wire    ap_block_pp0_stage2_11001;
reg    grp_fu_265_ce;
reg   [6:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [95:0] bound4_fu_303_p00;
wire   [95:0] bound4_fu_303_p10;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

Systolic_Array_CodEe #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
Systolic_Array_CodEe_U201(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ap_phi_mux_tmp_phi_fu_252_p4),
    .din1(tmp_4_i_i_i_reg_395),
    .ce(grp_fu_260_ce),
    .dout(grp_fu_260_p2)
);

Systolic_Array_CoeOg #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
Systolic_Array_CoeOg_U202(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_51_reg_390),
    .din1(tmp_52_reg_385),
    .ce(grp_fu_265_ce),
    .dout(grp_fu_265_p2)
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
        end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln119_fu_313_p2 == 1'd0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state4) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln119_fu_313_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln119_fu_313_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == O_inter_1_1_full_n) & (1'b1 == ap_CS_fsm_state12))) begin
        col_0_i_i_i_reg_225 <= add_ln119_reg_371;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        col_0_i_i_i_reg_225 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln122_reg_376 == 1'd0))) begin
        indvar_flatten13_reg_236 <= add_ln122_reg_380;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln119_fu_313_p2 == 1'd1))) begin
        indvar_flatten13_reg_236 <= 96'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln122_reg_376_pp0_iter2_reg == 1'd0))) begin
        tmp_reg_247 <= O_temp_11_fu_335_p3;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln119_fu_313_p2 == 1'd1))) begin
        tmp_reg_247 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln119_reg_371 <= add_ln119_fu_318_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        add_ln122_reg_380 <= add_ln122_fu_329_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((p_r_out_full_n == 1'b0) | (p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_3_loc_empty_n) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        and_ln130_reg_357 <= and_ln130_fu_281_p2;
        p_c_read_reg_342 <= p_c_s_dout;
        p_chin_read_reg_347 <= p_chin_s_dout;
        p_k_read_reg_352 <= p_k_s_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bound4_reg_362 <= bound4_fu_303_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln122_reg_376 <= icmp_ln122_fu_324_p2;
        icmp_ln122_reg_376_pp0_iter1_reg <= icmp_ln122_reg_376;
        icmp_ln122_reg_376_pp0_iter2_reg <= icmp_ln122_reg_376_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'd1 == and_ln130_reg_357) & (icmp_ln122_reg_376 == 1'd0))) begin
        tmp_4_i_i_i_reg_395 <= grp_fu_265_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln122_reg_376 == 1'd0))) begin
        tmp_51_reg_390 <= In_inter_1_1_dout;
        tmp_52_reg_385 <= W_inter_1_1_dout;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln122_reg_376 == 1'd0) & (1'b0 == ap_block_pp0_stage1))) begin
        In_inter_1_1_blk_n = In_inter_1_1_empty_n;
    end else begin
        In_inter_1_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln122_reg_376 == 1'd0))) begin
        In_inter_1_1_read = 1'b1;
    end else begin
        In_inter_1_1_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln122_reg_376 == 1'd0) & (1'b0 == ap_block_pp0_stage1))) begin
        In_inter_1_2_blk_n = In_inter_1_2_full_n;
    end else begin
        In_inter_1_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln122_reg_376 == 1'd0))) begin
        In_inter_1_2_write = 1'b1;
    end else begin
        In_inter_1_2_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        O_inter_1_1_blk_n = O_inter_1_1_full_n;
    end else begin
        O_inter_1_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == O_inter_1_1_full_n) & (1'b1 == ap_CS_fsm_state12))) begin
        O_inter_1_1_write = 1'b1;
    end else begin
        O_inter_1_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln122_reg_376 == 1'd0) & (1'b0 == ap_block_pp0_stage1))) begin
        W_inter_1_1_blk_n = W_inter_1_1_empty_n;
    end else begin
        W_inter_1_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln122_reg_376 == 1'd0))) begin
        W_inter_1_1_read = 1'b1;
    end else begin
        W_inter_1_1_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln122_reg_376 == 1'd0) & (1'b0 == ap_block_pp0_stage1))) begin
        W_inter_2_1_blk_n = W_inter_2_1_full_n;
    end else begin
        W_inter_2_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln122_reg_376 == 1'd0))) begin
        W_inter_2_1_write = 1'b1;
    end else begin
        W_inter_2_1_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln207_3_loc_blk_n = add_ln207_3_loc_empty_n;
    end else begin
        add_ln207_3_loc_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((p_r_out_full_n == 1'b0) | (p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_3_loc_empty_n) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln207_3_loc_read = 1'b1;
    end else begin
        add_ln207_3_loc_read = 1'b0;
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
    if ((~((p_r_out_full_n == 1'b0) | (p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_3_loc_empty_n) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln207_loc_out_write = 1'b1;
    end else begin
        add_ln207_loc_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((p_r_out_full_n == 1'b0) | (p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_3_loc_empty_n) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln207_loc_read = 1'b1;
    end else begin
        add_ln207_loc_read = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln122_fu_324_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state4 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln119_fu_313_p2 == 1'd0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln122_reg_376 == 1'd0))) begin
        ap_phi_mux_indvar_flatten13_phi_fu_240_p4 = add_ln122_reg_380;
    end else begin
        ap_phi_mux_indvar_flatten13_phi_fu_240_p4 = indvar_flatten13_reg_236;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln122_reg_376_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage1))) begin
        ap_phi_mux_tmp_phi_fu_252_p4 = O_temp_11_fu_335_p3;
    end else begin
        ap_phi_mux_tmp_phi_fu_252_p4 = tmp_reg_247;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln119_fu_313_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_260_ce = 1'b1;
    end else begin
        grp_fu_260_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_265_ce = 1'b1;
    end else begin
        grp_fu_265_ce = 1'b0;
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
    if ((~((p_r_out_full_n == 1'b0) | (p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_3_loc_empty_n) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((p_r_out_full_n == 1'b0) | (p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_3_loc_empty_n) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((p_r_out_full_n == 1'b0) | (p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_3_loc_empty_n) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((p_r_out_full_n == 1'b0) | (p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_3_loc_empty_n) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((p_r_out_full_n == 1'b0) | (p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_3_loc_empty_n) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((p_r_out_full_n == 1'b0) | (p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_3_loc_empty_n) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((p_r_out_full_n == 1'b0) | (p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_3_loc_empty_n) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((p_r_out_full_n == 1'b0) | (p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_3_loc_empty_n) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((p_r_out_full_n == 1'b0) | (p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_3_loc_empty_n) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((p_r_out_full_n == 1'b0) | (p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_3_loc_empty_n) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_r_s_read = 1'b1;
    end else begin
        p_r_s_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((p_r_out_full_n == 1'b0) | (p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_3_loc_empty_n) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln119_fu_313_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln122_fu_324_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln122_fu_324_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((~((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == O_inter_1_1_full_n) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign In_inter_1_2_din = In_inter_1_1_dout;

assign O_inter_1_1_din = tmp_reg_247;

assign O_temp_11_fu_335_p3 = ((and_ln130_reg_357[0:0] === 1'b1) ? grp_fu_260_p2 : tmp_reg_247);

assign W_inter_2_1_din = W_inter_1_1_dout;

assign add_ln119_fu_318_p2 = (col_0_i_i_i_reg_225 + 31'd1);

assign add_ln122_fu_329_p2 = (ap_phi_mux_indvar_flatten13_phi_fu_240_p4 + 96'd1);

assign add_ln207_loc_out_din = add_ln207_loc_dout;

assign and_ln130_fu_281_p2 = (icmp_ln130_fu_269_p2 & icmp_ln130_11_fu_275_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_01001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (((1'b0 == W_inter_2_1_full_n) & (icmp_ln122_reg_376 == 1'd0)) | ((1'b0 == In_inter_1_2_full_n) & (icmp_ln122_reg_376 == 1'd0)) | ((1'b0 == In_inter_1_1_empty_n) & (icmp_ln122_reg_376 == 1'd0)) | ((1'b0 == W_inter_1_1_empty_n) & (icmp_ln122_reg_376 == 1'd0))));
end

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (((1'b0 == W_inter_2_1_full_n) & (icmp_ln122_reg_376 == 1'd0)) | ((1'b0 == In_inter_1_2_full_n) & (icmp_ln122_reg_376 == 1'd0)) | ((1'b0 == In_inter_1_1_empty_n) & (icmp_ln122_reg_376 == 1'd0)) | ((1'b0 == W_inter_1_1_empty_n) & (icmp_ln122_reg_376 == 1'd0))));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (((1'b0 == W_inter_2_1_full_n) & (icmp_ln122_reg_376 == 1'd0)) | ((1'b0 == In_inter_1_2_full_n) & (icmp_ln122_reg_376 == 1'd0)) | ((1'b0 == In_inter_1_1_empty_n) & (icmp_ln122_reg_376 == 1'd0)) | ((1'b0 == W_inter_1_1_empty_n) & (icmp_ln122_reg_376 == 1'd0))));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((p_r_out_full_n == 1'b0) | (p_k_out_full_n == 1'b0) | (p_chout_out_full_n == 1'b0) | (p_chin_out_full_n == 1'b0) | (p_c_out_full_n == 1'b0) | (1'b0 == add_ln207_loc_out_full_n) | (p_r_s_empty_n == 1'b0) | (p_k_s_empty_n == 1'b0) | (p_chout_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (1'b0 == add_ln207_loc_empty_n) | (1'b0 == add_ln207_3_loc_empty_n) | (ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state10_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_pp0_stage1_iter0 = (((1'b0 == W_inter_2_1_full_n) & (icmp_ln122_reg_376 == 1'd0)) | ((1'b0 == In_inter_1_2_full_n) & (icmp_ln122_reg_376 == 1'd0)) | ((1'b0 == In_inter_1_1_empty_n) & (icmp_ln122_reg_376 == 1'd0)) | ((1'b0 == W_inter_1_1_empty_n) & (icmp_ln122_reg_376 == 1'd0)));
end

assign ap_block_state6_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign bound4_fu_303_p0 = bound4_fu_303_p00;

assign bound4_fu_303_p00 = bound_fu_290_p2;

assign bound4_fu_303_p1 = bound4_fu_303_p10;

assign bound4_fu_303_p10 = p_chin_read_reg_347;

assign bound4_fu_303_p2 = (bound4_fu_303_p0 * bound4_fu_303_p1);

assign bound_fu_290_p0 = cast_fu_287_p1;

assign bound_fu_290_p1 = cast_fu_287_p1;

assign bound_fu_290_p2 = (bound_fu_290_p0 * bound_fu_290_p1);

assign cast_fu_287_p1 = p_k_read_reg_352;

assign col_0_i_i_i_cast_fu_309_p1 = col_0_i_i_i_reg_225;

assign icmp_ln119_fu_313_p2 = (($signed(col_0_i_i_i_cast_fu_309_p1) < $signed(p_c_read_reg_342)) ? 1'b1 : 1'b0);

assign icmp_ln122_fu_324_p2 = ((ap_phi_mux_indvar_flatten13_phi_fu_240_p4 == bound4_reg_362) ? 1'b1 : 1'b0);

assign icmp_ln130_11_fu_275_p2 = (($signed(p_chout_s_dout) > $signed(add_ln207_loc_dout)) ? 1'b1 : 1'b0);

assign icmp_ln130_fu_269_p2 = (($signed(p_r_s_dout) > $signed(add_ln207_3_loc_dout)) ? 1'b1 : 1'b0);

assign p_c_out_din = p_c_s_dout;

assign p_chin_out_din = p_chin_s_dout;

assign p_chout_out_din = p_chout_s_dout;

assign p_k_out_din = p_k_s_dout;

assign p_r_out_din = p_r_s_dout;

endmodule //PE26
