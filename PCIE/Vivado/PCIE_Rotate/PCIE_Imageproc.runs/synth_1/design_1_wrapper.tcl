# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7vx690tffg1761-3

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir F:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.cache/wt [current_project]
set_property parent.project_path F:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  f:/FPGA/project/Vivado/PCIE_Rotate/xilinx.com_user_Riffa_Axis_1.0
  f:/FPGA/project/Vivado/PCIE_Rotate/xilinx_com_hls_ImageRotate_1_0
  f:/FPGA/project/Vivado/PCIE_Rotate/xilinx.com_user_inverter_1.0
  f:/FPGA/project/Vivado/PCIE_Rotate/xilinx.com_user_Ap_Controller_1.0
  f:/FPGA/project/Vivado/PCIE_Rotate/xilinx.com_user_riffa_controller_1.0
} [current_project]
set_property ip_output_repo f:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib F:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
add_files F:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all f:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_util_ds_buf_0_0/design_1_util_ds_buf_0_0_board.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_util_ds_buf_0_0/design_1_util_ds_buf_0_0.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_util_ds_buf_0_0/design_1_util_ds_buf_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_pcie3_7x_0_0/source/design_1_pcie3_7x_0_0-PCIE_X0Y1.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_pcie3_7x_0_0/synth/design_1_pcie3_7x_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_BRAM0_0/design_1_BRAM0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1_board.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1_late.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/sources_1/bd/design_1/ip/design_1_ImageRotate_0_0/constraints/ImageRotate_ooc.xdc]
set_property used_in_implementation false [get_files -all F:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/sources_1/bd/design_1/design_1_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc F:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/constrs_1/new/xdc.xdc
set_property used_in_implementation false [get_files F:/FPGA/project/Vivado/PCIE_Rotate/PCIE_Imageproc.srcs/constrs_1/new/xdc.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top design_1_wrapper -part xc7vx690tffg1761-3


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef design_1_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]