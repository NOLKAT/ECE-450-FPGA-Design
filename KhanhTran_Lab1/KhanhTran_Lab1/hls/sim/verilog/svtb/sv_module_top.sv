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
import compute_subsystem_pkg::*;
`include "compute_subsys_test_sequence_lib.sv"
`include "compute_test_lib.sv"


module sv_module_top;


    misc_interface              misc_if ( .clock(apatb_compute_top.AESL_clock), .reset(apatb_compute_top.AESL_reset) );
    assign apatb_compute_top.ap_start = misc_if.tb2dut_ap_start;
    assign misc_if.dut2tb_ap_done = apatb_compute_top.ap_done;
    assign misc_if.dut2tb_ap_ready = apatb_compute_top.ap_ready;
    initial begin
        uvm_config_db #(virtual misc_interface)::set(null, "uvm_test_top.top_env.*", "misc_if", misc_if);
    end


    svr_if #(32)  svr_a_if    (.clk  (apatb_compute_top.AESL_clock), .rst(apatb_compute_top.AESL_reset));
    assign apatb_compute_top.a = svr_a_if.data[31:0];
    assign svr_a_if.ready = svr_a_if.valid & misc_if.tb2dut_ap_start;
    initial begin
        uvm_config_db #( virtual svr_if#(32) )::set(null, "uvm_test_top.top_env.env_master_svr_a.*", "vif", svr_a_if);
    end


    svr_if #(32)  svr_b_if    (.clk  (apatb_compute_top.AESL_clock), .rst(apatb_compute_top.AESL_reset));
    assign apatb_compute_top.b = svr_b_if.data[31:0];
    assign svr_b_if.ready = svr_b_if.valid & misc_if.tb2dut_ap_start;
    initial begin
        uvm_config_db #( virtual svr_if#(32) )::set(null, "uvm_test_top.top_env.env_master_svr_b.*", "vif", svr_b_if);
    end


    svr_if #(32)  svr_c_if    (.clk  (apatb_compute_top.AESL_clock), .rst(apatb_compute_top.AESL_reset));
    assign svr_c_if.valid = apatb_compute_top.c_ap_vld;
    assign svr_c_if.data[31:0] = apatb_compute_top.c;
    initial begin
        uvm_config_db #( virtual svr_if#(32) )::set(null, "uvm_test_top.top_env.env_slave_svr_c.*", "vif", svr_c_if);
    end


    initial begin
        run_test();
    end
endmodule
`endif
