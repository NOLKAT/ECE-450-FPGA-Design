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
import maxmul2x2_subsystem_pkg::*;
`include "maxmul2x2_subsys_test_sequence_lib.sv"
`include "maxmul2x2_test_lib.sv"


module sv_module_top;


    misc_interface              misc_if ( .clock(apatb_maxmul2x2_top.AESL_clock), .reset(apatb_maxmul2x2_top.AESL_reset) );
    assign apatb_maxmul2x2_top.ap_start = misc_if.tb2dut_ap_start;
    assign misc_if.dut2tb_ap_done = apatb_maxmul2x2_top.ap_done;
    assign misc_if.dut2tb_ap_ready = apatb_maxmul2x2_top.ap_ready;
    initial begin
        uvm_config_db #(virtual misc_interface)::set(null, "uvm_test_top.top_env.*", "misc_if", misc_if);
    end


    svr_if #(16)  svr_a00_if    (.clk  (apatb_maxmul2x2_top.AESL_clock), .rst(apatb_maxmul2x2_top.AESL_reset));
    assign apatb_maxmul2x2_top.a00 = svr_a00_if.data[15:0];
    assign svr_a00_if.ready = svr_a00_if.valid & misc_if.tb2dut_ap_start;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_master_svr_a00.*", "vif", svr_a00_if);
    end


    svr_if #(16)  svr_a01_if    (.clk  (apatb_maxmul2x2_top.AESL_clock), .rst(apatb_maxmul2x2_top.AESL_reset));
    assign apatb_maxmul2x2_top.a01 = svr_a01_if.data[15:0];
    assign svr_a01_if.ready = svr_a01_if.valid & misc_if.tb2dut_ap_start;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_master_svr_a01.*", "vif", svr_a01_if);
    end


    svr_if #(16)  svr_a10_if    (.clk  (apatb_maxmul2x2_top.AESL_clock), .rst(apatb_maxmul2x2_top.AESL_reset));
    assign apatb_maxmul2x2_top.a10 = svr_a10_if.data[15:0];
    assign svr_a10_if.ready = svr_a10_if.valid & misc_if.tb2dut_ap_start;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_master_svr_a10.*", "vif", svr_a10_if);
    end


    svr_if #(16)  svr_a11_if    (.clk  (apatb_maxmul2x2_top.AESL_clock), .rst(apatb_maxmul2x2_top.AESL_reset));
    assign apatb_maxmul2x2_top.a11 = svr_a11_if.data[15:0];
    assign svr_a11_if.ready = svr_a11_if.valid & misc_if.tb2dut_ap_start;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_master_svr_a11.*", "vif", svr_a11_if);
    end


    svr_if #(16)  svr_b00_if    (.clk  (apatb_maxmul2x2_top.AESL_clock), .rst(apatb_maxmul2x2_top.AESL_reset));
    assign apatb_maxmul2x2_top.b00 = svr_b00_if.data[15:0];
    assign svr_b00_if.ready = svr_b00_if.valid & misc_if.tb2dut_ap_start;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_master_svr_b00.*", "vif", svr_b00_if);
    end


    svr_if #(16)  svr_b01_if    (.clk  (apatb_maxmul2x2_top.AESL_clock), .rst(apatb_maxmul2x2_top.AESL_reset));
    assign apatb_maxmul2x2_top.b01 = svr_b01_if.data[15:0];
    assign svr_b01_if.ready = svr_b01_if.valid & misc_if.tb2dut_ap_start;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_master_svr_b01.*", "vif", svr_b01_if);
    end


    svr_if #(16)  svr_b10_if    (.clk  (apatb_maxmul2x2_top.AESL_clock), .rst(apatb_maxmul2x2_top.AESL_reset));
    assign apatb_maxmul2x2_top.b10 = svr_b10_if.data[15:0];
    assign svr_b10_if.ready = svr_b10_if.valid & misc_if.tb2dut_ap_start;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_master_svr_b10.*", "vif", svr_b10_if);
    end


    svr_if #(16)  svr_b11_if    (.clk  (apatb_maxmul2x2_top.AESL_clock), .rst(apatb_maxmul2x2_top.AESL_reset));
    assign apatb_maxmul2x2_top.b11 = svr_b11_if.data[15:0];
    assign svr_b11_if.ready = svr_b11_if.valid & misc_if.tb2dut_ap_start;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_master_svr_b11.*", "vif", svr_b11_if);
    end


    svr_if #(32)  svr_c00_if    (.clk  (apatb_maxmul2x2_top.AESL_clock), .rst(apatb_maxmul2x2_top.AESL_reset));
    assign svr_c00_if.data[31:0] = apatb_maxmul2x2_top.c00;
    assign svr_c00_if.valid = misc_if.dut2tb_ap_done;
    assign svr_c00_if.ready = misc_if.dut2tb_ap_done;
    initial begin
        uvm_config_db #( virtual svr_if#(32) )::set(null, "uvm_test_top.top_env.env_slave_svr_c00.*", "vif", svr_c00_if);
    end


    svr_if #(32)  svr_c01_if    (.clk  (apatb_maxmul2x2_top.AESL_clock), .rst(apatb_maxmul2x2_top.AESL_reset));
    assign svr_c01_if.data[31:0] = apatb_maxmul2x2_top.c01;
    assign svr_c01_if.valid = misc_if.dut2tb_ap_done;
    assign svr_c01_if.ready = misc_if.dut2tb_ap_done;
    initial begin
        uvm_config_db #( virtual svr_if#(32) )::set(null, "uvm_test_top.top_env.env_slave_svr_c01.*", "vif", svr_c01_if);
    end


    svr_if #(32)  svr_c10_if    (.clk  (apatb_maxmul2x2_top.AESL_clock), .rst(apatb_maxmul2x2_top.AESL_reset));
    assign svr_c10_if.data[31:0] = apatb_maxmul2x2_top.c10;
    assign svr_c10_if.valid = misc_if.dut2tb_ap_done;
    assign svr_c10_if.ready = misc_if.dut2tb_ap_done;
    initial begin
        uvm_config_db #( virtual svr_if#(32) )::set(null, "uvm_test_top.top_env.env_slave_svr_c10.*", "vif", svr_c10_if);
    end


    svr_if #(32)  svr_c11_if    (.clk  (apatb_maxmul2x2_top.AESL_clock), .rst(apatb_maxmul2x2_top.AESL_reset));
    assign svr_c11_if.data[31:0] = apatb_maxmul2x2_top.c11;
    assign svr_c11_if.valid = misc_if.dut2tb_ap_done;
    assign svr_c11_if.ready = misc_if.dut2tb_ap_done;
    initial begin
        uvm_config_db #( virtual svr_if#(32) )::set(null, "uvm_test_top.top_env.env_slave_svr_c11.*", "vif", svr_c11_if);
    end


    initial begin
        run_test();
    end
endmodule
`endif
