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
import sobel_rgb_axis_subsystem_pkg::*;
`include "sobel_rgb_axis_subsys_test_sequence_lib.sv"
`include "sobel_rgb_axis_test_lib.sv"


module sv_module_top;


    misc_interface              misc_if ( .clock(apatb_sobel_rgb_axis_top.AESL_clock), .reset(apatb_sobel_rgb_axis_top.AESL_reset) );
    assign misc_if.dut2tb_ap_ready = apatb_sobel_rgb_axis_top.AESL_inst_sobel_rgb_axis.ap_ready;
    assign misc_if.dut2tb_ap_done_kernel = apatb_sobel_rgb_axis_top.AESL_inst_sobel_rgb_axis.ap_done;
    initial begin
        uvm_config_db #(virtual misc_interface)::set(null, "uvm_test_top.top_env.*", "misc_if", misc_if);
    end


    svr_if #(34)  svr_in_axis_if    (.clk  (apatb_sobel_rgb_axis_top.AESL_clock), .rst(apatb_sobel_rgb_axis_top.AESL_reset));
    assign svr_in_axis_if.ready = apatb_sobel_rgb_axis_top.in_axis_TREADY;
    assign apatb_sobel_rgb_axis_top.in_axis_TVALID = svr_in_axis_if.valid;
    assign apatb_sobel_rgb_axis_top.in_axis_TDATA = svr_in_axis_if.data[23:0];
    assign apatb_sobel_rgb_axis_top.in_axis_TKEEP = svr_in_axis_if.data[26:24];
    assign apatb_sobel_rgb_axis_top.in_axis_TSTRB = svr_in_axis_if.data[29:27];
    assign apatb_sobel_rgb_axis_top.in_axis_TUSER = svr_in_axis_if.data[30:30];
    assign apatb_sobel_rgb_axis_top.in_axis_TLAST = svr_in_axis_if.data[31:31];
    assign apatb_sobel_rgb_axis_top.in_axis_TID = svr_in_axis_if.data[32:32];
    assign apatb_sobel_rgb_axis_top.in_axis_TDEST = svr_in_axis_if.data[33:33];
    initial begin
        uvm_config_db #( virtual svr_if#(34) )::set(null, "uvm_test_top.top_env.env_master_svr_in_axis.*", "vif", svr_in_axis_if);
    end


    svr_if #(34)  svr_out_axis_if    (.clk  (apatb_sobel_rgb_axis_top.AESL_clock), .rst(apatb_sobel_rgb_axis_top.AESL_reset));
    assign apatb_sobel_rgb_axis_top.out_axis_TREADY = svr_out_axis_if.ready;
    assign svr_out_axis_if.valid = apatb_sobel_rgb_axis_top.out_axis_TVALID;
    assign svr_out_axis_if.data[23:0] = apatb_sobel_rgb_axis_top.out_axis_TDATA;
    assign svr_out_axis_if.data[26:24] = apatb_sobel_rgb_axis_top.out_axis_TKEEP;
    assign svr_out_axis_if.data[29:27] = apatb_sobel_rgb_axis_top.out_axis_TSTRB;
    assign svr_out_axis_if.data[30:30] = apatb_sobel_rgb_axis_top.out_axis_TUSER;
    assign svr_out_axis_if.data[31:31] = apatb_sobel_rgb_axis_top.out_axis_TLAST;
    assign svr_out_axis_if.data[32:32] = apatb_sobel_rgb_axis_top.out_axis_TID;
    assign svr_out_axis_if.data[33:33] = apatb_sobel_rgb_axis_top.out_axis_TDEST;
    initial begin
        uvm_config_db #( virtual svr_if#(34) )::set(null, "uvm_test_top.top_env.env_slave_svr_out_axis.*", "vif", svr_out_axis_if);
    end


    axi_if #(5,4,4,3,1)  axi_CTRL_if (.clk  (apatb_sobel_rgb_axis_top.AESL_clock), .rst(apatb_sobel_rgb_axis_top.AESL_reset));
    assign apatb_sobel_rgb_axis_top.CTRL_AWADDR = axi_CTRL_if.AWADDR;
    assign apatb_sobel_rgb_axis_top.CTRL_AWVALID = axi_CTRL_if.AWVALID;
    assign axi_CTRL_if.AWREADY = apatb_sobel_rgb_axis_top.CTRL_AWREADY;
    assign apatb_sobel_rgb_axis_top.CTRL_WVALID = axi_CTRL_if.WVALID;
    assign axi_CTRL_if.WREADY = apatb_sobel_rgb_axis_top.CTRL_WREADY;
    assign apatb_sobel_rgb_axis_top.CTRL_WDATA = axi_CTRL_if.WDATA;
    assign apatb_sobel_rgb_axis_top.CTRL_WSTRB = axi_CTRL_if.WSTRB;
    assign apatb_sobel_rgb_axis_top.CTRL_ARADDR = axi_CTRL_if.ARADDR;
    assign apatb_sobel_rgb_axis_top.CTRL_ARVALID = axi_CTRL_if.ARVALID;
    assign axi_CTRL_if.ARREADY = apatb_sobel_rgb_axis_top.CTRL_ARREADY;
    assign axi_CTRL_if.RVALID = apatb_sobel_rgb_axis_top.CTRL_RVALID;
    assign apatb_sobel_rgb_axis_top.CTRL_RREADY = axi_CTRL_if.RREADY;
    assign axi_CTRL_if.RDATA = apatb_sobel_rgb_axis_top.CTRL_RDATA;
    assign axi_CTRL_if.RRESP = apatb_sobel_rgb_axis_top.CTRL_RRESP;
    assign axi_CTRL_if.BVALID = apatb_sobel_rgb_axis_top.CTRL_BVALID;
    assign apatb_sobel_rgb_axis_top.CTRL_BREADY = axi_CTRL_if.BREADY;
    assign axi_CTRL_if.BRESP = apatb_sobel_rgb_axis_top.CTRL_BRESP;
    assign axi_CTRL_if.BID = 0;
    assign axi_CTRL_if.RID = 0;
    assign axi_CTRL_if.RLAST = 1;
    initial begin
        uvm_config_db #( virtual axi_if#(5,4,4,3,1) )::set(null, "uvm_test_top.top_env.axi_lite_CTRL.*", "vif", axi_CTRL_if);
    end


    initial begin
        run_test();
    end
endmodule
`endif
