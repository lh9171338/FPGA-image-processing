// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 30 12:05:20 2018
// Host        : DESKTOP-7JLTO9Q running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_Ap_Controller_0_0/design_1_Ap_Controller_0_0_stub.v
// Design      : design_1_Ap_Controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Ap_Controller,Vivado 2018.2" *)
module design_1_Ap_Controller_0_0(clk, rst_n, start, ap_ready, ap_start)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,start,ap_ready,ap_start" */;
  input clk;
  input rst_n;
  input start;
  input ap_ready;
  output ap_start;
endmodule
