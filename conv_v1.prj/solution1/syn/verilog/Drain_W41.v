// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Drain_W41 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        W_next_V4_dout,
        W_next_V4_empty_n,
        W_next_V4_read,
        p_c_s_dout,
        p_c_s_empty_n,
        p_c_s_read,
        p_chin_s_dout,
        p_chin_s_empty_n,
        p_chin_s_read,
        p_k_s_dout,
        p_k_s_empty_n,
        p_k_s_read
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] W_next_V4_dout;
input   W_next_V4_empty_n;
output   W_next_V4_read;
input  [31:0] p_c_s_dout;
input   p_c_s_empty_n;
output   p_c_s_read;
input  [31:0] p_chin_s_dout;
input   p_chin_s_empty_n;
output   p_chin_s_read;
input  [31:0] p_k_s_dout;
input   p_k_s_empty_n;
output   p_k_s_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg W_next_V4_read;
reg p_c_s_read;
reg p_chin_s_read;
reg p_k_s_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    W_next_V4_blk_n;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln170_fu_167_p2;
reg    p_c_s_blk_n;
reg    p_chin_s_blk_n;
reg    p_k_s_blk_n;
reg   [31:0] p_c_read_reg_178;
reg    ap_block_state1;
reg   [31:0] p_chin_read_reg_183;
reg   [31:0] p_k_read_reg_188;
wire   [30:0] col_fu_131_p2;
reg   [30:0] col_reg_197;
wire    ap_CS_fsm_state2;
wire   [30:0] chi_fu_146_p2;
reg   [30:0] chi_reg_205;
wire    ap_CS_fsm_state3;
wire   [30:0] kr_fu_161_p2;
reg   [30:0] kr_reg_213;
wire    ap_CS_fsm_state4;
wire   [31:0] kc_fu_172_p2;
reg    ap_block_state5;
reg   [30:0] col_0_i_i_reg_78;
wire   [0:0] icmp_ln166_fu_141_p2;
reg   [30:0] chi_0_i_i_reg_89;
wire   [0:0] icmp_ln164_fu_126_p2;
wire   [0:0] icmp_ln168_fu_156_p2;
reg   [30:0] kr_0_i_i_reg_100;
reg   [31:0] kc_0_i_i_reg_111;
wire   [31:0] zext_ln164_fu_122_p1;
wire   [31:0] zext_ln166_fu_137_p1;
wire   [31:0] zext_ln168_fu_152_p1;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((icmp_ln164_fu_126_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln168_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        chi_0_i_i_reg_89 <= chi_reg_205;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln164_fu_126_p2 == 1'd1))) begin
        chi_0_i_i_reg_89 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln166_fu_141_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        col_0_i_i_reg_78 <= col_reg_197;
    end else if ((~((p_k_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        col_0_i_i_reg_78 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln170_fu_167_p2 == 1'd0) & (1'b0 == W_next_V4_empty_n)) & (icmp_ln170_fu_167_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        kc_0_i_i_reg_111 <= kc_fu_172_p2;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln168_fu_156_p2 == 1'd1))) begin
        kc_0_i_i_reg_111 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln170_fu_167_p2 == 1'd0) & (1'b0 == W_next_V4_empty_n)) & (icmp_ln170_fu_167_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        kr_0_i_i_reg_100 <= kr_reg_213;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln166_fu_141_p2 == 1'd1))) begin
        kr_0_i_i_reg_100 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        chi_reg_205 <= chi_fu_146_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        col_reg_197 <= col_fu_131_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        kr_reg_213 <= kr_fu_161_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((p_k_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_c_read_reg_178 <= p_c_s_dout;
        p_chin_read_reg_183 <= p_chin_s_dout;
        p_k_read_reg_188 <= p_k_s_dout;
    end
end

always @ (*) begin
    if (((icmp_ln170_fu_167_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        W_next_V4_blk_n = W_next_V4_empty_n;
    end else begin
        W_next_V4_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln170_fu_167_p2 == 1'd0) & (1'b0 == W_next_V4_empty_n)) & (icmp_ln170_fu_167_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        W_next_V4_read = 1'b1;
    end else begin
        W_next_V4_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln164_fu_126_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln164_fu_126_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
    if ((~((p_k_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_c_s_read = 1'b1;
    end else begin
        p_c_s_read = 1'b0;
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
    if ((~((p_k_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_chin_s_read = 1'b1;
    end else begin
        p_chin_s_read = 1'b0;
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
    if ((~((p_k_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_k_s_read = 1'b1;
    end else begin
        p_k_s_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((p_k_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln164_fu_126_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln166_fu_141_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln168_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((icmp_ln170_fu_167_p2 == 1'd0) & (1'b0 == W_next_V4_empty_n)) & (icmp_ln170_fu_167_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else if ((~((icmp_ln170_fu_167_p2 == 1'd0) & (1'b0 == W_next_V4_empty_n)) & (icmp_ln170_fu_167_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state1 = ((p_k_s_empty_n == 1'b0) | (p_chin_s_empty_n == 1'b0) | (p_c_s_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state5 = ((icmp_ln170_fu_167_p2 == 1'd0) & (1'b0 == W_next_V4_empty_n));
end

assign chi_fu_146_p2 = (chi_0_i_i_reg_89 + 31'd1);

assign col_fu_131_p2 = (col_0_i_i_reg_78 + 31'd1);

assign icmp_ln164_fu_126_p2 = (($signed(zext_ln164_fu_122_p1) < $signed(p_c_read_reg_178)) ? 1'b1 : 1'b0);

assign icmp_ln166_fu_141_p2 = (($signed(zext_ln166_fu_137_p1) < $signed(p_chin_read_reg_183)) ? 1'b1 : 1'b0);

assign icmp_ln168_fu_156_p2 = (($signed(zext_ln168_fu_152_p1) < $signed(p_k_read_reg_188)) ? 1'b1 : 1'b0);

assign icmp_ln170_fu_167_p2 = ((kc_0_i_i_reg_111 == p_k_read_reg_188) ? 1'b1 : 1'b0);

assign kc_fu_172_p2 = (kc_0_i_i_reg_111 + 32'd1);

assign kr_fu_161_p2 = (kr_0_i_i_reg_100 + 31'd1);

assign zext_ln164_fu_122_p1 = col_0_i_i_reg_78;

assign zext_ln166_fu_137_p1 = chi_0_i_i_reg_89;

assign zext_ln168_fu_152_p1 = kr_0_i_i_reg_100;

endmodule //Drain_W41
