//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef SV_MODULE_TOP_SV
`define SV_MODULE_TOP_SV


`timescale 1ns/1ps


`include "uvm_macros.svh"
import uvm_pkg::*;
import file_agent_pkg::*;
import svr_pkg::*;
import mux_2to1_subsystem_pkg::*;
`include "mux_2to1_subsys_test_sequence_lib.sv"
`include "mux_2to1_test_lib.sv"


module sv_module_top;


    misc_interface              misc_if ( .clock(apatb_mux_2to1_top.AESL_clock), .reset(apatb_mux_2to1_top.AESL_reset) );
    initial begin
        uvm_config_db #(virtual misc_interface)::set(null, "uvm_test_top.top_env.*", "misc_if", misc_if);
    end


    svr_if #(1)  svr_a_if    (.clk  (apatb_mux_2to1_top.AESL_clock), .rst(apatb_mux_2to1_top.AESL_reset));
    assign apatb_mux_2to1_top.a = svr_a_if.data[0:0];
    assign svr_a_if.ready = svr_a_if.valid & misc_if.tb2dut_ap_start;
    initial begin
        uvm_config_db #( virtual svr_if#(1) )::set(null, "uvm_test_top.top_env.env_master_svr_a.*", "vif", svr_a_if);
    end


    svr_if #(1)  svr_b_if    (.clk  (apatb_mux_2to1_top.AESL_clock), .rst(apatb_mux_2to1_top.AESL_reset));
    assign apatb_mux_2to1_top.b = svr_b_if.data[0:0];
    assign svr_b_if.ready = svr_b_if.valid & misc_if.tb2dut_ap_start;
    initial begin
        uvm_config_db #( virtual svr_if#(1) )::set(null, "uvm_test_top.top_env.env_master_svr_b.*", "vif", svr_b_if);
    end


    svr_if #(1)  svr_sel_if    (.clk  (apatb_mux_2to1_top.AESL_clock), .rst(apatb_mux_2to1_top.AESL_reset));
    assign apatb_mux_2to1_top.sel = svr_sel_if.data[0:0];
    assign svr_sel_if.ready = svr_sel_if.valid & misc_if.tb2dut_ap_start;
    initial begin
        uvm_config_db #( virtual svr_if#(1) )::set(null, "uvm_test_top.top_env.env_master_svr_sel.*", "vif", svr_sel_if);
    end


    svr_if #(1)  svr_y_if    (.clk  (apatb_mux_2to1_top.AESL_clock), .rst(apatb_mux_2to1_top.AESL_reset));
    assign svr_y_if.data[0:0] = apatb_mux_2to1_top.y;
    assign svr_y_if.valid = misc_if.dut2tb_ap_done;
    assign svr_y_if.ready = misc_if.dut2tb_ap_done;
    initial begin
        uvm_config_db #( virtual svr_if#(1) )::set(null, "uvm_test_top.top_env.env_slave_svr_y.*", "vif", svr_y_if);
    end


    initial begin
        run_test();
    end
endmodule
`endif
