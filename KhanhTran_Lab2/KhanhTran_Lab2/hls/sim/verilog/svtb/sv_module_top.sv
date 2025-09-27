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
import fir16_subsystem_pkg::*;
`include "fir16_subsys_test_sequence_lib.sv"
`include "fir16_test_lib.sv"


module sv_module_top;


    misc_interface              misc_if ( .clock(apatb_fir16_top.AESL_clock), .reset(apatb_fir16_top.AESL_reset) );
    assign apatb_fir16_top.ap_start = misc_if.tb2dut_ap_start;
    assign misc_if.dut2tb_ap_done = apatb_fir16_top.ap_done;
    assign misc_if.dut2tb_ap_ready = apatb_fir16_top.ap_ready;
    initial begin
        uvm_config_db #(virtual misc_interface)::set(null, "uvm_test_top.top_env.*", "misc_if", misc_if);
    end


    initial begin
        run_test();
    end
endmodule
`endif
