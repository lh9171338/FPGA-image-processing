// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Block_Mat_exit45_pro (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rows,
        cols,
        sigma,
        p_src_rows_V_out_din,
        p_src_rows_V_out_full_n,
        p_src_rows_V_out_write,
        p_src_cols_V_out_din,
        p_src_cols_V_out_full_n,
        p_src_cols_V_out_write,
        p_dst_rows_V_out_din,
        p_dst_rows_V_out_full_n,
        p_dst_rows_V_out_write,
        p_dst_cols_V_out_din,
        p_dst_cols_V_out_full_n,
        p_dst_cols_V_out_write,
        src_rows_out_din,
        src_rows_out_full_n,
        src_rows_out_write,
        src_cols_out_din,
        src_cols_out_full_n,
        src_cols_out_write,
        sigma_out_din,
        sigma_out_full_n,
        sigma_out_write
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] rows;
input  [31:0] cols;
input  [31:0] sigma;
output  [31:0] p_src_rows_V_out_din;
input   p_src_rows_V_out_full_n;
output   p_src_rows_V_out_write;
output  [31:0] p_src_cols_V_out_din;
input   p_src_cols_V_out_full_n;
output   p_src_cols_V_out_write;
output  [31:0] p_dst_rows_V_out_din;
input   p_dst_rows_V_out_full_n;
output   p_dst_rows_V_out_write;
output  [31:0] p_dst_cols_V_out_din;
input   p_dst_cols_V_out_full_n;
output   p_dst_cols_V_out_write;
output  [31:0] src_rows_out_din;
input   src_rows_out_full_n;
output   src_rows_out_write;
output  [31:0] src_cols_out_din;
input   src_cols_out_full_n;
output   src_cols_out_write;
output  [31:0] sigma_out_din;
input   sigma_out_full_n;
output   sigma_out_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_src_rows_V_out_write;
reg p_src_cols_V_out_write;
reg p_dst_rows_V_out_write;
reg p_dst_cols_V_out_write;
reg src_rows_out_write;
reg src_cols_out_write;
reg sigma_out_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_src_rows_V_out_blk_n;
reg    p_src_cols_V_out_blk_n;
reg    p_dst_rows_V_out_blk_n;
reg    p_dst_cols_V_out_blk_n;
reg    src_rows_out_blk_n;
reg    src_cols_out_blk_n;
reg    sigma_out_blk_n;
reg    ap_block_state1;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
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
        end else if ((~((ap_start == 1'b0) | (sigma_out_full_n == 1'b0) | (src_cols_out_full_n == 1'b0) | (src_rows_out_full_n == 1'b0) | (p_dst_cols_V_out_full_n == 1'b0) | (p_dst_rows_V_out_full_n == 1'b0) | (p_src_cols_V_out_full_n == 1'b0) | (p_src_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (sigma_out_full_n == 1'b0) | (src_cols_out_full_n == 1'b0) | (src_rows_out_full_n == 1'b0) | (p_dst_cols_V_out_full_n == 1'b0) | (p_dst_rows_V_out_full_n == 1'b0) | (p_src_cols_V_out_full_n == 1'b0) | (p_src_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((ap_start == 1'b0) | (sigma_out_full_n == 1'b0) | (src_cols_out_full_n == 1'b0) | (src_rows_out_full_n == 1'b0) | (p_dst_cols_V_out_full_n == 1'b0) | (p_dst_rows_V_out_full_n == 1'b0) | (p_src_cols_V_out_full_n == 1'b0) | (p_src_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        p_dst_cols_V_out_blk_n = p_dst_cols_V_out_full_n;
    end else begin
        p_dst_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (sigma_out_full_n == 1'b0) | (src_cols_out_full_n == 1'b0) | (src_rows_out_full_n == 1'b0) | (p_dst_cols_V_out_full_n == 1'b0) | (p_dst_rows_V_out_full_n == 1'b0) | (p_src_cols_V_out_full_n == 1'b0) | (p_src_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dst_cols_V_out_write = 1'b1;
    end else begin
        p_dst_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        p_dst_rows_V_out_blk_n = p_dst_rows_V_out_full_n;
    end else begin
        p_dst_rows_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (sigma_out_full_n == 1'b0) | (src_cols_out_full_n == 1'b0) | (src_rows_out_full_n == 1'b0) | (p_dst_cols_V_out_full_n == 1'b0) | (p_dst_rows_V_out_full_n == 1'b0) | (p_src_cols_V_out_full_n == 1'b0) | (p_src_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_dst_rows_V_out_write = 1'b1;
    end else begin
        p_dst_rows_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        p_src_cols_V_out_blk_n = p_src_cols_V_out_full_n;
    end else begin
        p_src_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (sigma_out_full_n == 1'b0) | (src_cols_out_full_n == 1'b0) | (src_rows_out_full_n == 1'b0) | (p_dst_cols_V_out_full_n == 1'b0) | (p_dst_rows_V_out_full_n == 1'b0) | (p_src_cols_V_out_full_n == 1'b0) | (p_src_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_cols_V_out_write = 1'b1;
    end else begin
        p_src_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        p_src_rows_V_out_blk_n = p_src_rows_V_out_full_n;
    end else begin
        p_src_rows_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (sigma_out_full_n == 1'b0) | (src_cols_out_full_n == 1'b0) | (src_rows_out_full_n == 1'b0) | (p_dst_cols_V_out_full_n == 1'b0) | (p_dst_rows_V_out_full_n == 1'b0) | (p_src_cols_V_out_full_n == 1'b0) | (p_src_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_src_rows_V_out_write = 1'b1;
    end else begin
        p_src_rows_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        sigma_out_blk_n = sigma_out_full_n;
    end else begin
        sigma_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (sigma_out_full_n == 1'b0) | (src_cols_out_full_n == 1'b0) | (src_rows_out_full_n == 1'b0) | (p_dst_cols_V_out_full_n == 1'b0) | (p_dst_rows_V_out_full_n == 1'b0) | (p_src_cols_V_out_full_n == 1'b0) | (p_src_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        sigma_out_write = 1'b1;
    end else begin
        sigma_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        src_cols_out_blk_n = src_cols_out_full_n;
    end else begin
        src_cols_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (sigma_out_full_n == 1'b0) | (src_cols_out_full_n == 1'b0) | (src_rows_out_full_n == 1'b0) | (p_dst_cols_V_out_full_n == 1'b0) | (p_dst_rows_V_out_full_n == 1'b0) | (p_src_cols_V_out_full_n == 1'b0) | (p_src_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        src_cols_out_write = 1'b1;
    end else begin
        src_cols_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        src_rows_out_blk_n = src_rows_out_full_n;
    end else begin
        src_rows_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (sigma_out_full_n == 1'b0) | (src_cols_out_full_n == 1'b0) | (src_rows_out_full_n == 1'b0) | (p_dst_cols_V_out_full_n == 1'b0) | (p_dst_rows_V_out_full_n == 1'b0) | (p_src_cols_V_out_full_n == 1'b0) | (p_src_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        src_rows_out_write = 1'b1;
    end else begin
        src_rows_out_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (sigma_out_full_n == 1'b0) | (src_cols_out_full_n == 1'b0) | (src_rows_out_full_n == 1'b0) | (p_dst_cols_V_out_full_n == 1'b0) | (p_dst_rows_V_out_full_n == 1'b0) | (p_src_cols_V_out_full_n == 1'b0) | (p_src_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign p_dst_cols_V_out_din = cols;

assign p_dst_rows_V_out_din = rows;

assign p_src_cols_V_out_din = cols;

assign p_src_rows_V_out_din = rows;

assign sigma_out_din = sigma;

assign src_cols_out_din = cols;

assign src_rows_out_din = rows;

endmodule //Block_Mat_exit45_pro
