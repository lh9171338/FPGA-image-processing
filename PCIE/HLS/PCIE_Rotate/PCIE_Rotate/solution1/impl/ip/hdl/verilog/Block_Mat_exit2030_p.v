// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Block_Mat_exit2030_p (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        arr1_cols_dout,
        arr1_cols_empty_n,
        arr1_cols_read,
        cols1,
        cols1_ap_vld,
        p_read,
        arr1_cols_out_din,
        arr1_cols_out_full_n,
        arr1_cols_out_write,
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] arr1_cols_dout;
input   arr1_cols_empty_n;
output   arr1_cols_read;
output  [31:0] cols1;
output   cols1_ap_vld;
input  [31:0] p_read;
output  [31:0] arr1_cols_out_din;
input   arr1_cols_out_full_n;
output   arr1_cols_out_write;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg arr1_cols_read;
reg[31:0] cols1;
reg cols1_ap_vld;
reg arr1_cols_out_write;
reg[31:0] ap_return_0;
reg[31:0] ap_return_1;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    arr1_cols_blk_n;
reg    arr1_cols_out_blk_n;
reg    ap_block_state1;
reg   [31:0] cols1_preg;
reg   [31:0] ap_return_0_preg;
reg   [31:0] ap_return_1_preg;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 cols1_preg = 32'd0;
#0 ap_return_0_preg = 32'd0;
#0 ap_return_1_preg = 32'd0;
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
        end else if ((~((ap_start == 1'b0) | (arr1_cols_out_full_n == 1'b0) | (arr1_cols_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 32'd0;
    end else begin
        if ((~((ap_start == 1'b0) | (arr1_cols_out_full_n == 1'b0) | (arr1_cols_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_0_preg <= p_read;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 32'd0;
    end else begin
        if ((~((ap_start == 1'b0) | (arr1_cols_out_full_n == 1'b0) | (arr1_cols_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_1_preg <= arr1_cols_dout;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        cols1_preg <= 32'd0;
    end else begin
        if ((~((ap_start == 1'b0) | (arr1_cols_out_full_n == 1'b0) | (arr1_cols_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            cols1_preg <= arr1_cols_dout;
        end
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (arr1_cols_out_full_n == 1'b0) | (arr1_cols_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((ap_start == 1'b0) | (arr1_cols_out_full_n == 1'b0) | (arr1_cols_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (arr1_cols_out_full_n == 1'b0) | (arr1_cols_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_0 = p_read;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (arr1_cols_out_full_n == 1'b0) | (arr1_cols_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_1 = arr1_cols_dout;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        arr1_cols_blk_n = arr1_cols_empty_n;
    end else begin
        arr1_cols_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        arr1_cols_out_blk_n = arr1_cols_out_full_n;
    end else begin
        arr1_cols_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (arr1_cols_out_full_n == 1'b0) | (arr1_cols_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        arr1_cols_out_write = 1'b1;
    end else begin
        arr1_cols_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (arr1_cols_out_full_n == 1'b0) | (arr1_cols_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        arr1_cols_read = 1'b1;
    end else begin
        arr1_cols_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (arr1_cols_out_full_n == 1'b0) | (arr1_cols_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        cols1 = arr1_cols_dout;
    end else begin
        cols1 = cols1_preg;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (arr1_cols_out_full_n == 1'b0) | (arr1_cols_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        cols1_ap_vld = 1'b1;
    end else begin
        cols1_ap_vld = 1'b0;
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
    ap_block_state1 = ((ap_start == 1'b0) | (arr1_cols_out_full_n == 1'b0) | (arr1_cols_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign arr1_cols_out_din = arr1_cols_dout;

endmodule //Block_Mat_exit2030_p
