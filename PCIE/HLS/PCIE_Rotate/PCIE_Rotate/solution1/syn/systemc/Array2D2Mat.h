// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Array2D2Mat_HH_
#define _Array2D2Mat_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Array2D2Mat : public sc_module {
    // Port declarations 30
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_out< sc_lv<16> > arr_val_address0;
    sc_out< sc_logic > arr_val_ce0;
    sc_in< sc_lv<8> > arr_val_q0;
    sc_in< sc_lv<32> > arr_rows_dout;
    sc_in< sc_logic > arr_rows_empty_n;
    sc_out< sc_logic > arr_rows_read;
    sc_in< sc_lv<32> > arr_cols_dout;
    sc_in< sc_logic > arr_cols_empty_n;
    sc_out< sc_logic > arr_cols_read;
    sc_in< sc_lv<32> > param_val_0_V_read;
    sc_in< sc_lv<32> > param_val_1_V_read;
    sc_out< sc_lv<8> > mat_data_stream_V_din;
    sc_in< sc_logic > mat_data_stream_V_full_n;
    sc_out< sc_logic > mat_data_stream_V_write;
    sc_out< sc_lv<32> > mat_rows_V_din;
    sc_in< sc_logic > mat_rows_V_full_n;
    sc_out< sc_logic > mat_rows_V_write;
    sc_out< sc_lv<32> > mat_cols_V_din;
    sc_in< sc_logic > mat_cols_V_full_n;
    sc_out< sc_logic > mat_cols_V_write;


    // Module declarations
    Array2D2Mat(sc_module_name name);
    SC_HAS_PROCESS(Array2D2Mat);

    ~Array2D2Mat();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > arr_rows_blk_n;
    sc_signal< sc_logic > arr_cols_blk_n;
    sc_signal< sc_logic > mat_data_stream_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > tmp_68_i_reg_458;
    sc_signal< sc_logic > mat_rows_V_blk_n;
    sc_signal< sc_logic > mat_cols_V_blk_n;
    sc_signal< sc_lv<31> > j_i_reg_154;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > cols_reg_426;
    sc_signal< sc_lv<32> > val_assign_fu_165_p2;
    sc_signal< sc_lv<32> > val_assign_reg_431;
    sc_signal< sc_lv<1> > tmp_i_fu_186_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<31> > i_fu_191_p2;
    sc_signal< sc_lv<31> > i_reg_440;
    sc_signal< sc_lv<1> > tmp_65_i_fu_197_p2;
    sc_signal< sc_lv<1> > tmp_65_i_reg_445;
    sc_signal< sc_lv<18> > tmp_38_cast_fu_213_p3;
    sc_signal< sc_lv<18> > tmp_38_cast_reg_453;
    sc_signal< sc_lv<1> > tmp_68_i_fu_225_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<31> > j_fu_230_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<8> > pix_val_0_2_fu_347_p3;
    sc_signal< sc_lv<8> > pix_val_0_2_reg_472;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_lv<31> > i_i_reg_143;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<64> > tmp_39_cast_fu_267_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<32> > offset_3_fu_76;
    sc_signal< sc_lv<32> > offset_6_fu_378_p3;
    sc_signal< sc_lv<32> > idx_3_fu_80;
    sc_signal< sc_lv<32> > idx_6_fu_363_p3;
    sc_signal< sc_lv<32> > i_cast_i_fu_182_p1;
    sc_signal< sc_lv<10> > tmp_fu_203_p1;
    sc_signal< sc_lv<10> > tmp_78_fu_207_p2;
    sc_signal< sc_lv<32> > j_cast_i_fu_221_p1;
    sc_signal< sc_lv<31> > tmp_79_fu_242_p4;
    sc_signal< sc_lv<18> > tmp_80_fu_258_p1;
    sc_signal< sc_lv<18> > tmp_s_fu_262_p2;
    sc_signal< sc_lv<1> > tmp_81_fu_272_p1;
    sc_signal< sc_lv<2> > tmp_82_fu_282_p1;
    sc_signal< sc_lv<5> > tmp_83_fu_286_p3;
    sc_signal< sc_lv<32> > p_Val2_s_fu_276_p3;
    sc_signal< sc_lv<32> > tmp_84_fu_294_p1;
    sc_signal< sc_lv<32> > tmp_85_fu_298_p2;
    sc_signal< sc_lv<1> > tmp_72_i_fu_308_p2;
    sc_signal< sc_lv<32> > idx_fu_314_p2;
    sc_signal< sc_lv<32> > offset_fu_320_p2;
    sc_signal< sc_lv<1> > icmp_fu_252_p2;
    sc_signal< sc_lv<1> > sel_tmp_fu_342_p2;
    sc_signal< sc_lv<8> > pix_val_0_1_fu_304_p1;
    sc_signal< sc_lv<32> > idx_4_fu_326_p3;
    sc_signal< sc_lv<32> > idx_5_fu_355_p3;
    sc_signal< sc_lv<32> > offset_4_fu_334_p3;
    sc_signal< sc_lv<32> > offset_5_fu_370_p3;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state5;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<10> ap_const_lv10_3FF;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<3> ap_const_lv3_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_arr_cols_blk_n();
    void thread_arr_cols_read();
    void thread_arr_rows_blk_n();
    void thread_arr_rows_read();
    void thread_arr_val_address0();
    void thread_arr_val_ce0();
    void thread_i_cast_i_fu_182_p1();
    void thread_i_fu_191_p2();
    void thread_icmp_fu_252_p2();
    void thread_idx_4_fu_326_p3();
    void thread_idx_5_fu_355_p3();
    void thread_idx_6_fu_363_p3();
    void thread_idx_fu_314_p2();
    void thread_internal_ap_ready();
    void thread_j_cast_i_fu_221_p1();
    void thread_j_fu_230_p2();
    void thread_mat_cols_V_blk_n();
    void thread_mat_cols_V_din();
    void thread_mat_cols_V_write();
    void thread_mat_data_stream_V_blk_n();
    void thread_mat_data_stream_V_din();
    void thread_mat_data_stream_V_write();
    void thread_mat_rows_V_blk_n();
    void thread_mat_rows_V_din();
    void thread_mat_rows_V_write();
    void thread_offset_4_fu_334_p3();
    void thread_offset_5_fu_370_p3();
    void thread_offset_6_fu_378_p3();
    void thread_offset_fu_320_p2();
    void thread_p_Val2_s_fu_276_p3();
    void thread_pix_val_0_1_fu_304_p1();
    void thread_pix_val_0_2_fu_347_p3();
    void thread_real_start();
    void thread_sel_tmp_fu_342_p2();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_38_cast_fu_213_p3();
    void thread_tmp_39_cast_fu_267_p1();
    void thread_tmp_65_i_fu_197_p2();
    void thread_tmp_68_i_fu_225_p2();
    void thread_tmp_72_i_fu_308_p2();
    void thread_tmp_78_fu_207_p2();
    void thread_tmp_79_fu_242_p4();
    void thread_tmp_80_fu_258_p1();
    void thread_tmp_81_fu_272_p1();
    void thread_tmp_82_fu_282_p1();
    void thread_tmp_83_fu_286_p3();
    void thread_tmp_84_fu_294_p1();
    void thread_tmp_85_fu_298_p2();
    void thread_tmp_fu_203_p1();
    void thread_tmp_i_fu_186_p2();
    void thread_tmp_s_fu_262_p2();
    void thread_val_assign_fu_165_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
