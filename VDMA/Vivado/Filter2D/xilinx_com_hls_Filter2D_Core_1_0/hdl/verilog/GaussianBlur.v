// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GaussianBlur (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        src_val_address0,
        src_val_ce0,
        src_val_q0,
        src_rows_dout,
        src_rows_empty_n,
        src_rows_read,
        src_cols_dout,
        src_cols_empty_n,
        src_cols_read,
        dst_val_address0,
        dst_val_ce0,
        dst_val_we0,
        dst_val_d0,
        sigmaX_dout,
        sigmaX_empty_n,
        sigmaX_read
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [17:0] src_val_address0;
output   src_val_ce0;
input  [7:0] src_val_q0;
input  [31:0] src_rows_dout;
input   src_rows_empty_n;
output   src_rows_read;
input  [31:0] src_cols_dout;
input   src_cols_empty_n;
output   src_cols_read;
output  [17:0] dst_val_address0;
output   dst_val_ce0;
output   dst_val_we0;
output  [7:0] dst_val_d0;
input  [31:0] sigmaX_dout;
input   sigmaX_empty_n;
output   sigmaX_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_rows_read;
reg src_cols_read;
reg sigmaX_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    src_rows_blk_n;
reg    src_cols_blk_n;
reg    sigmaX_blk_n;
reg   [31:0] sigmaX_read_reg_189;
reg    ap_block_state1;
reg   [31:0] src_rows_read_reg_194;
reg   [31:0] src_cols_read_reg_199;
reg   [31:0] kernel_val_0_V_0_reg_204;
wire    ap_CS_fsm_state2;
wire    grp_getGaussianKernel_fu_48_ap_idle;
wire    grp_getGaussianKernel_fu_48_ap_ready;
wire    grp_getGaussianKernel_fu_48_ap_done;
reg   [31:0] kernel_val_0_V_1_reg_209;
reg   [31:0] kernel_val_0_V_2_reg_214;
reg   [31:0] kernel_val_0_V_3_reg_219;
reg   [31:0] kernel_val_0_V_4_reg_224;
reg   [31:0] kernel_val_1_V_0_reg_229;
reg   [31:0] kernel_val_1_V_1_reg_234;
reg   [31:0] kernel_val_1_V_2_reg_239;
reg   [31:0] kernel_val_1_V_3_reg_244;
reg   [31:0] kernel_val_1_V_4_reg_249;
reg   [31:0] kernel_val_2_V_0_reg_254;
reg   [31:0] kernel_val_2_V_1_reg_259;
reg   [31:0] kernel_val_2_V_2_reg_264;
reg   [31:0] kernel_val_2_V_3_reg_269;
reg   [31:0] kernel_val_2_V_4_reg_274;
reg   [31:0] kernel_val_3_V_0_reg_279;
reg   [31:0] kernel_val_3_V_1_reg_284;
reg   [31:0] kernel_val_3_V_2_reg_289;
reg   [31:0] kernel_val_3_V_3_reg_294;
reg   [31:0] kernel_val_3_V_4_reg_299;
reg   [31:0] kernel_val_4_V_0_reg_304;
reg   [31:0] kernel_val_4_V_1_reg_309;
reg   [31:0] kernel_val_4_V_2_reg_314;
reg   [31:0] kernel_val_4_V_3_reg_319;
reg   [31:0] kernel_val_4_V_4_reg_324;
wire    grp_getGaussianKernel_fu_48_ap_start;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_0;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_1;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_2;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_3;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_4;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_5;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_6;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_7;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_8;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_9;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_10;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_11;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_12;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_13;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_14;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_15;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_16;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_17;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_18;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_19;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_20;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_21;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_22;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_23;
wire   [31:0] grp_getGaussianKernel_fu_48_ap_return_24;
wire    grp_Filter2D_fu_54_ap_start;
wire    grp_Filter2D_fu_54_ap_done;
wire    grp_Filter2D_fu_54_ap_idle;
wire    grp_Filter2D_fu_54_ap_ready;
wire   [17:0] grp_Filter2D_fu_54_src_val_address0;
wire    grp_Filter2D_fu_54_src_val_ce0;
wire   [17:0] grp_Filter2D_fu_54_dst_val_address0;
wire    grp_Filter2D_fu_54_dst_val_ce0;
wire    grp_Filter2D_fu_54_dst_val_we0;
wire   [7:0] grp_Filter2D_fu_54_dst_val_d0;
reg    grp_getGaussianKernel_fu_48_ap_start_reg;
reg    ap_block_state1_ignore_call4;
reg    grp_Filter2D_fu_54_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 grp_getGaussianKernel_fu_48_ap_start_reg = 1'b0;
#0 grp_Filter2D_fu_54_ap_start_reg = 1'b0;
end

getGaussianKernel grp_getGaussianKernel_fu_48(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_getGaussianKernel_fu_48_ap_start),
    .ap_done(grp_getGaussianKernel_fu_48_ap_done),
    .ap_idle(grp_getGaussianKernel_fu_48_ap_idle),
    .ap_ready(grp_getGaussianKernel_fu_48_ap_ready),
    .sigmaX(sigmaX_read_reg_189),
    .ap_return_0(grp_getGaussianKernel_fu_48_ap_return_0),
    .ap_return_1(grp_getGaussianKernel_fu_48_ap_return_1),
    .ap_return_2(grp_getGaussianKernel_fu_48_ap_return_2),
    .ap_return_3(grp_getGaussianKernel_fu_48_ap_return_3),
    .ap_return_4(grp_getGaussianKernel_fu_48_ap_return_4),
    .ap_return_5(grp_getGaussianKernel_fu_48_ap_return_5),
    .ap_return_6(grp_getGaussianKernel_fu_48_ap_return_6),
    .ap_return_7(grp_getGaussianKernel_fu_48_ap_return_7),
    .ap_return_8(grp_getGaussianKernel_fu_48_ap_return_8),
    .ap_return_9(grp_getGaussianKernel_fu_48_ap_return_9),
    .ap_return_10(grp_getGaussianKernel_fu_48_ap_return_10),
    .ap_return_11(grp_getGaussianKernel_fu_48_ap_return_11),
    .ap_return_12(grp_getGaussianKernel_fu_48_ap_return_12),
    .ap_return_13(grp_getGaussianKernel_fu_48_ap_return_13),
    .ap_return_14(grp_getGaussianKernel_fu_48_ap_return_14),
    .ap_return_15(grp_getGaussianKernel_fu_48_ap_return_15),
    .ap_return_16(grp_getGaussianKernel_fu_48_ap_return_16),
    .ap_return_17(grp_getGaussianKernel_fu_48_ap_return_17),
    .ap_return_18(grp_getGaussianKernel_fu_48_ap_return_18),
    .ap_return_19(grp_getGaussianKernel_fu_48_ap_return_19),
    .ap_return_20(grp_getGaussianKernel_fu_48_ap_return_20),
    .ap_return_21(grp_getGaussianKernel_fu_48_ap_return_21),
    .ap_return_22(grp_getGaussianKernel_fu_48_ap_return_22),
    .ap_return_23(grp_getGaussianKernel_fu_48_ap_return_23),
    .ap_return_24(grp_getGaussianKernel_fu_48_ap_return_24)
);

Filter2D grp_Filter2D_fu_54(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_Filter2D_fu_54_ap_start),
    .ap_done(grp_Filter2D_fu_54_ap_done),
    .ap_idle(grp_Filter2D_fu_54_ap_idle),
    .ap_ready(grp_Filter2D_fu_54_ap_ready),
    .src_val_address0(grp_Filter2D_fu_54_src_val_address0),
    .src_val_ce0(grp_Filter2D_fu_54_src_val_ce0),
    .src_val_q0(src_val_q0),
    .src_rows_read(src_rows_read_reg_194),
    .src_cols_read(src_cols_read_reg_199),
    .kernel_val_0_V_0_read(kernel_val_0_V_0_reg_204),
    .kernel_val_0_V_1_read(kernel_val_0_V_1_reg_209),
    .kernel_val_0_V_2_read(kernel_val_0_V_2_reg_214),
    .kernel_val_0_V_3_read(kernel_val_0_V_3_reg_219),
    .kernel_val_0_V_4_read(kernel_val_0_V_4_reg_224),
    .kernel_val_1_V_0_read(kernel_val_1_V_0_reg_229),
    .kernel_val_1_V_1_read(kernel_val_1_V_1_reg_234),
    .kernel_val_1_V_2_read(kernel_val_1_V_2_reg_239),
    .kernel_val_1_V_3_read(kernel_val_1_V_3_reg_244),
    .kernel_val_1_V_4_read(kernel_val_1_V_4_reg_249),
    .kernel_val_2_V_0_read(kernel_val_2_V_0_reg_254),
    .kernel_val_2_V_1_read(kernel_val_2_V_1_reg_259),
    .kernel_val_2_V_2_read(kernel_val_2_V_2_reg_264),
    .kernel_val_2_V_3_read(kernel_val_2_V_3_reg_269),
    .kernel_val_2_V_4_read(kernel_val_2_V_4_reg_274),
    .kernel_val_3_V_0_read(kernel_val_3_V_0_reg_279),
    .kernel_val_3_V_1_read(kernel_val_3_V_1_reg_284),
    .kernel_val_3_V_2_read(kernel_val_3_V_2_reg_289),
    .kernel_val_3_V_3_read(kernel_val_3_V_3_reg_294),
    .kernel_val_3_V_4_read(kernel_val_3_V_4_reg_299),
    .kernel_val_4_V_0_read(kernel_val_4_V_0_reg_304),
    .kernel_val_4_V_1_read(kernel_val_4_V_1_reg_309),
    .kernel_val_4_V_2_read(kernel_val_4_V_2_reg_314),
    .kernel_val_4_V_3_read(kernel_val_4_V_3_reg_319),
    .kernel_val_4_V_4_read(kernel_val_4_V_4_reg_324),
    .dst_val_address0(grp_Filter2D_fu_54_dst_val_address0),
    .dst_val_ce0(grp_Filter2D_fu_54_dst_val_ce0),
    .dst_val_we0(grp_Filter2D_fu_54_dst_val_we0),
    .dst_val_d0(grp_Filter2D_fu_54_dst_val_d0)
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
        end else if (((1'b1 == ap_CS_fsm_state4) & (grp_Filter2D_fu_54_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Filter2D_fu_54_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_Filter2D_fu_54_ap_start_reg <= 1'b1;
        end else if ((grp_Filter2D_fu_54_ap_ready == 1'b1)) begin
            grp_Filter2D_fu_54_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_getGaussianKernel_fu_48_ap_start_reg <= 1'b0;
    end else begin
        if ((~((ap_start == 1'b0) | (sigmaX_empty_n == 1'b0) | (src_cols_empty_n == 1'b0) | (src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_getGaussianKernel_fu_48_ap_start_reg <= 1'b1;
        end else if ((grp_getGaussianKernel_fu_48_ap_ready == 1'b1)) begin
            grp_getGaussianKernel_fu_48_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((grp_getGaussianKernel_fu_48_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        kernel_val_0_V_0_reg_204 <= grp_getGaussianKernel_fu_48_ap_return_0;
        kernel_val_0_V_1_reg_209 <= grp_getGaussianKernel_fu_48_ap_return_1;
        kernel_val_0_V_2_reg_214 <= grp_getGaussianKernel_fu_48_ap_return_2;
        kernel_val_0_V_3_reg_219 <= grp_getGaussianKernel_fu_48_ap_return_3;
        kernel_val_0_V_4_reg_224 <= grp_getGaussianKernel_fu_48_ap_return_4;
        kernel_val_1_V_0_reg_229 <= grp_getGaussianKernel_fu_48_ap_return_5;
        kernel_val_1_V_1_reg_234 <= grp_getGaussianKernel_fu_48_ap_return_6;
        kernel_val_1_V_2_reg_239 <= grp_getGaussianKernel_fu_48_ap_return_7;
        kernel_val_1_V_3_reg_244 <= grp_getGaussianKernel_fu_48_ap_return_8;
        kernel_val_1_V_4_reg_249 <= grp_getGaussianKernel_fu_48_ap_return_9;
        kernel_val_2_V_0_reg_254 <= grp_getGaussianKernel_fu_48_ap_return_10;
        kernel_val_2_V_1_reg_259 <= grp_getGaussianKernel_fu_48_ap_return_11;
        kernel_val_2_V_2_reg_264 <= grp_getGaussianKernel_fu_48_ap_return_12;
        kernel_val_2_V_3_reg_269 <= grp_getGaussianKernel_fu_48_ap_return_13;
        kernel_val_2_V_4_reg_274 <= grp_getGaussianKernel_fu_48_ap_return_14;
        kernel_val_3_V_0_reg_279 <= grp_getGaussianKernel_fu_48_ap_return_15;
        kernel_val_3_V_1_reg_284 <= grp_getGaussianKernel_fu_48_ap_return_16;
        kernel_val_3_V_2_reg_289 <= grp_getGaussianKernel_fu_48_ap_return_17;
        kernel_val_3_V_3_reg_294 <= grp_getGaussianKernel_fu_48_ap_return_18;
        kernel_val_3_V_4_reg_299 <= grp_getGaussianKernel_fu_48_ap_return_19;
        kernel_val_4_V_0_reg_304 <= grp_getGaussianKernel_fu_48_ap_return_20;
        kernel_val_4_V_1_reg_309 <= grp_getGaussianKernel_fu_48_ap_return_21;
        kernel_val_4_V_2_reg_314 <= grp_getGaussianKernel_fu_48_ap_return_22;
        kernel_val_4_V_3_reg_319 <= grp_getGaussianKernel_fu_48_ap_return_23;
        kernel_val_4_V_4_reg_324 <= grp_getGaussianKernel_fu_48_ap_return_24;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (sigmaX_empty_n == 1'b0) | (src_cols_empty_n == 1'b0) | (src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        sigmaX_read_reg_189 <= sigmaX_dout;
        src_cols_read_reg_199 <= src_cols_dout;
        src_rows_read_reg_194 <= src_rows_dout;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_Filter2D_fu_54_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state4) & (grp_Filter2D_fu_54_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        sigmaX_blk_n = sigmaX_empty_n;
    end else begin
        sigmaX_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (sigmaX_empty_n == 1'b0) | (src_cols_empty_n == 1'b0) | (src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        sigmaX_read = 1'b1;
    end else begin
        sigmaX_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        src_cols_blk_n = src_cols_empty_n;
    end else begin
        src_cols_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (sigmaX_empty_n == 1'b0) | (src_cols_empty_n == 1'b0) | (src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        src_cols_read = 1'b1;
    end else begin
        src_cols_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        src_rows_blk_n = src_rows_empty_n;
    end else begin
        src_rows_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (sigmaX_empty_n == 1'b0) | (src_cols_empty_n == 1'b0) | (src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        src_rows_read = 1'b1;
    end else begin
        src_rows_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (sigmaX_empty_n == 1'b0) | (src_cols_empty_n == 1'b0) | (src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_getGaussianKernel_fu_48_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_Filter2D_fu_54_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
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

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (sigmaX_empty_n == 1'b0) | (src_cols_empty_n == 1'b0) | (src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call4 = ((ap_start == 1'b0) | (sigmaX_empty_n == 1'b0) | (src_cols_empty_n == 1'b0) | (src_rows_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign dst_val_address0 = grp_Filter2D_fu_54_dst_val_address0;

assign dst_val_ce0 = grp_Filter2D_fu_54_dst_val_ce0;

assign dst_val_d0 = grp_Filter2D_fu_54_dst_val_d0;

assign dst_val_we0 = grp_Filter2D_fu_54_dst_val_we0;

assign grp_Filter2D_fu_54_ap_start = grp_Filter2D_fu_54_ap_start_reg;

assign grp_getGaussianKernel_fu_48_ap_start = grp_getGaussianKernel_fu_48_ap_start_reg;

assign src_val_address0 = grp_Filter2D_fu_54_src_val_address0;

assign src_val_ce0 = grp_Filter2D_fu_54_src_val_ce0;

endmodule //GaussianBlur
