// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Nov  5 17:12:02 2025
// Host        : katnlot running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,maxmul2x2,{}" *) (* CORE_GENERATION_INFO = "bd_0_hls_inst_0,maxmul2x2,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=maxmul2x2,x_ipVersion=1.0,x_ipCoreRevision=2114335150,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "HLS" *) (* X_CORE_INFO = "maxmul2x2,Vivado 2025.1" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst, ap_done, ap_idle, ap_ready, 
  ap_start, a00, a01, a10, a11, b00, b01, b10, b11, c00, c01, c10, c11)
/* synthesis syn_black_box black_box_pad_pin="ap_rst,ap_done,ap_idle,ap_ready,ap_start,a00[15:0],a01[15:0],a10[15:0],a11[15:0],b00[15:0],b01[15:0],b10[15:0],b11[15:0],c00[31:0],c01[31:0],c10[31:0],c11[31:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) (* X_INTERFACE_MODE = "slave" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a00 DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a00, LAYERED_METADATA undef" *) input [15:0]a00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a01 DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a01, LAYERED_METADATA undef" *) input [15:0]a01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a10 DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a10, LAYERED_METADATA undef" *) input [15:0]a10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a11 DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a11, LAYERED_METADATA undef" *) input [15:0]a11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b00 DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b00, LAYERED_METADATA undef" *) input [15:0]b00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b01 DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b01, LAYERED_METADATA undef" *) input [15:0]b01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b10 DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b10, LAYERED_METADATA undef" *) input [15:0]b10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b11 DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b11, LAYERED_METADATA undef" *) input [15:0]b11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c00 DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c00, LAYERED_METADATA undef" *) output [31:0]c00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c01 DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c01, LAYERED_METADATA undef" *) output [31:0]c01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c10 DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c10, LAYERED_METADATA undef" *) output [31:0]c10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c11 DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c11, LAYERED_METADATA undef" *) output [31:0]c11;
endmodule
