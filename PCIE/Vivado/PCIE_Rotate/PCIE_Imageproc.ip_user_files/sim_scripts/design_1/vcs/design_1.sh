#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2018.2 (64-bit)
#
# Filename    : design_1.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Fri Nov 30 20:07:08 +0800 2018
# SW Build 2258646 on Thu Jun 14 20:03:12 MDT 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved. 
#
# usage: design_1.sh [-help]
# usage: design_1.sh [-lib_map_path]
# usage: design_1.sh [-noclean_files]
# usage: design_1.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'design_1.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xil_defaultlib xpm xbip_utils_v3_0_9 xbip_pipe_v3_0_5 xbip_bram18k_v3_0_5 mult_gen_v12_0_14 blk_mem_gen_v8_4_1 axi_utils_v2_0_5 xbip_dsp48_wrapper_v3_0_4 xbip_dsp48_addsub_v3_0_5 xbip_dsp48_multadd_v3_0_5 floating_point_v7_1_6 util_vector_logic_v2_0_1)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "design_1.sh - Script generated by export_simulation (Vivado v2018.2 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../bd/design_1/ipshared/d43a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/b65a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/d43a" \
    "E:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "E:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "E:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../bd/design_1/ipshared/d43a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/b65a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/d43a" \
    "$ref_dir/../../../bd/design_1/ipshared/ab19/Ap_Controller.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_Ap_Controller_0_0/sim/design_1_Ap_Controller_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/design_1/ip/design_1_util_ds_buf_0_0/util_ds_buf.vhd" \
    "$ref_dir/../../../bd/design_1/ip/design_1_util_ds_buf_0_0/sim/design_1_util_ds_buf_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../bd/design_1/ipshared/d43a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/b65a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/d43a" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pcie_7vx.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pcie_bram_7vx.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pcie_bram_7vx_8k.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pcie_bram_7vx_16k.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pcie_bram_7vx_cpl.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pcie_bram_7vx_rep.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pcie_bram_7vx_rep_8k.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pcie_bram_7vx_req.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pcie_init_ctrl_7vx.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pcie_pipe_lane.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pcie_pipe_misc.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pcie_pipe_pipeline.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pcie_top.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pcie_force_adapt.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pipe_clock.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pipe_drp.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pipe_eq.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pipe_rate.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pipe_reset.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pipe_sync.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pipe_user.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pipe_wrapper.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_qpll_drp.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_qpll_reset.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_qpll_wrapper.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_rxeq_scan.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_gt_wrapper.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_gt_top.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_gt_common.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_gtx_cpllpd_ovrd.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pcie_tlp_tph_tbl_7vx.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0_pcie_3_0_7vx.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_pcie3_7x_0_0/sim/design_1_pcie3_7x_0_0.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/async_fifo.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/async_fifo_fwft.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/channel.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/channel_128.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/channel_32.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/channel_64.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/counter.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/cross_domain_signal.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/demux.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/engine_layer.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/ff.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/fifo.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/fifo_packer_128.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/fifo_packer_32.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/fifo_packer_64.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/interrupt.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/interrupt_controller.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/mux.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/offset_flag_to_one_hot.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/offset_to_mask.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/one_hot_mux.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/pipeline.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/ram_1clk_1w_1r.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/ram_2clk_1w_1r.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/recv_credit_flow_ctrl.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/register.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/registers.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/reorder_queue.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/reorder_queue_input.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/reorder_queue_output.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/reset_controller.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/reset_extender.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/riffa.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/riffa_controller.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/rotate.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/rx_engine_classic.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/rx_engine_ultrascale.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/rx_port_128.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/rx_port_32.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/rx_port_64.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/rx_port_channel_gate.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/rx_port_reader.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/rx_port_requester_mux.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/rxc_engine_128.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/rxc_engine_classic.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/rxc_engine_ultrascale.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/rxr_engine_128.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/rxr_engine_classic.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/rxr_engine_ultrascale.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/scsdpram.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/sg_list_reader_128.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/sg_list_reader_32.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/sg_list_reader_64.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/sg_list_requester.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/shiftreg.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/sync_fifo.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/syncff.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_alignment_pipeline.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_data_fifo.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_data_pipeline.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_data_shift.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_engine.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_engine_classic.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_engine_selector.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_engine_ultrascale.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_hdr_fifo.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_multiplexer.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_multiplexer_128.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_multiplexer_32.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_multiplexer_64.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_port_128.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_port_32.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_port_64.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_port_buffer_128.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_port_buffer_32.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_port_buffer_64.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_port_channel_gate_128.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_port_channel_gate_32.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_port_channel_gate_64.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_port_monitor_128.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_port_monitor_32.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_port_monitor_64.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/tx_port_writer.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/txc_engine_classic.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/txc_engine_ultrascale.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/txr_engine_classic.v" \
    "$ref_dir/../../../bd/design_1/ipshared/d43a/txr_engine_ultrascale.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_riffa_controller_0_0/sim/design_1_riffa_controller_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xbip_utils_v3_0_9 $vhdlan_opts \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_Riffa_Axis_0_0/src/mult_gen_0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_pipe_v3_0_5 $vhdlan_opts \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_Riffa_Axis_0_0/src/mult_gen_0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_bram18k_v3_0_5 $vhdlan_opts \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_Riffa_Axis_0_0/src/mult_gen_0/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work mult_gen_v12_0_14 $vhdlan_opts \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_Riffa_Axis_0_0/src/mult_gen_0/hdl/mult_gen_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/design_1/ip/design_1_Riffa_Axis_0_0/src/mult_gen_0/sim/mult_gen_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../bd/design_1/ipshared/d43a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/b65a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/d43a" \
    "$ref_dir/../../../bd/design_1/ipshared/71ac/Axis2Riffa.v" \
    "$ref_dir/../../../bd/design_1/ipshared/71ac/Riffa2Axis.v" \
    "$ref_dir/../../../bd/design_1/ipshared/71ac/Riffa_Axis.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_Riffa_Axis_0_0/sim/design_1_Riffa_Axis_0_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work blk_mem_gen_v8_4_1 $vlogan_opts +v2k +incdir+"$ref_dir/../../../bd/design_1/ipshared/d43a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/b65a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/d43a" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../bd/design_1/ipshared/d43a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/b65a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/d43a" \
    "$ref_dir/../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_BRAM0_0/sim/design_1_BRAM0_0.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1_clk_wiz.v" \
    "$ref_dir/../../../bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work axi_utils_v2_0_5 $vhdlan_opts \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_wrapper_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/da55/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_addsub_v3_0_5 $vhdlan_opts \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/ad9e/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_multadd_v3_0_5 $vhdlan_opts \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/cd0f/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work floating_point_v7_1_6 $vhdlan_opts \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/c4f7/hdl/floating_point_v7_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../bd/design_1/ipshared/d43a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/b65a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/d43a" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/Array2D2Mat.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/AXIvideo2Mat.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/Block_Mat_exit26_pro.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/Block_Mat_exit2628_p.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/Block_Mat_exit2633_p.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/Block_Mat_exit2636_p.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/fifo_w2_d2_A.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/fifo_w8_d2_A.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/fifo_w17_d2_A.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/fifo_w17_d3_A.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/fifo_w18_d2_A.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/fifo_w19_d2_A.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/fifo_w32_d2_A.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/ImageRotate_arr0_ocq.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/ImageRotate_arr0_ocq_memcore.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/ImageRotate_arr1_pcA.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/ImageRotate_arr1_pcA_memcore.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/ImageRotate_fdiv_mb6.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/ImageRotate_fmul_lbW.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/ImageRotate_fpextncg.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/ImageRotate_mul_mjbC.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/ImageRotate_mul_mkbM.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/ImageRotate_mux_1ibs.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/ImageRotate_mux_4bkb.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/ImageRotate_mux_8hbi.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/Mat2Array2D.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/Mat2AXIvideo.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/Rotate.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/scaled_fixed2ieee.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/scaled_fixed2ieee_c.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/scaled_fixed2ieeecud.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/sin_or_cos_float_dEe.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/sin_or_cos_float_eOg.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/sin_or_cos_float_fYi.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/sin_or_cos_float_g8j.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/sin_or_cos_float_s.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/start_for_Block_MqcK.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/start_for_Block_MrcU.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/start_for_Mat2AXIsc4.v" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/verilog/ImageRotate.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/ip/ImageRotate_ap_fdiv_5_no_dsp_32.vhd" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/ip/ImageRotate_ap_fmul_0_max_dsp_32.vhd" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/0ef3/hdl/ip/ImageRotate_ap_fpext_0_no_dsp_32.vhd" \
    "$ref_dir/../../../bd/design_1/ip/design_1_ImageRotate_0_0/sim/design_1_ImageRotate_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../bd/design_1/ipshared/d43a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/b65a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/d43a" \
    "$ref_dir/../../../bd/design_1/sim/design_1.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work util_vector_logic_v2_0_1 $vlogan_opts +v2k +incdir+"$ref_dir/../../../bd/design_1/ipshared/d43a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/b65a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/d43a" \
    "$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../bd/design_1/ipshared/d43a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/b65a" +incdir+"$ref_dir/../../../../PCIE_Imageproc.srcs/sources_1/bd/design_1/ipshared/d43a" \
    "$ref_dir/../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.design_1 xil_defaultlib.glbl -o design_1_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./design_1_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./design_1.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key design_1_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc design_1_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./design_1.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: design_1.sh [-help]\n\
Usage: design_1.sh [-lib_map_path]\n\
Usage: design_1.sh [-reset_run]\n\
Usage: design_1.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
