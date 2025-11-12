// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Nov  8 21:02:05 2025
// Host        : katnlot running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/users/ankha/desktop/fpga_design/khanhtran_lab4/vivado_codes_lab4/tmp_edit_project.gen/sources_1/bd/Vivado_IP_Design/ip/Vivado_IP_Design_maxmul2x2_0_0/Vivado_IP_Design_maxmul2x2_0_0_stub.v
// Design      : Vivado_IP_Design_maxmul2x2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "Vivado_IP_Design_maxmul2x2_0_0,maxmul2x2,{}" *) (* CORE_GENERATION_INFO = "Vivado_IP_Design_maxmul2x2_0_0,maxmul2x2,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=maxmul2x2,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DATA_W=16,ACC_W=32}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "package_project" *) (* X_CORE_INFO = "maxmul2x2,Vivado 2025.1" *) 
module Vivado_IP_Design_maxmul2x2_0_0(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, a00, a01, a10, a11, b00, b01, b10, b11, c00, c01, c10, c11)
/* synthesis syn_black_box black_box_pad_pin="ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,a00[15:0],a01[15:0],a10[15:0],a11[15:0],b00[15:0],b01[15:0],b10[15:0],b11[15:0],c00[31:0],c01[31:0],c10[31:0],c11[31:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input ap_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [15:0]a00;
  input [15:0]a01;
  input [15:0]a10;
  input [15:0]a11;
  input [15:0]b00;
  input [15:0]b01;
  input [15:0]b10;
  input [15:0]b11;
  output [31:0]c00;
  output [31:0]c01;
  output [31:0]c10;
  output [31:0]c11;
endmodule
