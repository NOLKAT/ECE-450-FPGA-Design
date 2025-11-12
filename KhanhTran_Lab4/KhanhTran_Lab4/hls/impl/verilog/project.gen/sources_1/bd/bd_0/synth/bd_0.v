//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Wed Nov  5 17:11:16 2025
//Host        : katnlot running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (a00,
    a01,
    a10,
    a11,
    ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst,
    b00,
    b01,
    b10,
    b11,
    c00,
    c01,
    c10,
    c11);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A00, LAYERED_METADATA undef" *) input [15:0]a00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A01 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A01, LAYERED_METADATA undef" *) input [15:0]a01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A10 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A10, LAYERED_METADATA undef" *) input [15:0]a10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A11 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A11, LAYERED_METADATA undef" *) input [15:0]a11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) (* X_INTERFACE_MODE = "Slave" *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B00, LAYERED_METADATA undef" *) input [15:0]b00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B01 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B01, LAYERED_METADATA undef" *) input [15:0]b01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B10 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B10, LAYERED_METADATA undef" *) input [15:0]b10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B11 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B11, LAYERED_METADATA undef" *) input [15:0]b11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.C00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.C00, LAYERED_METADATA undef" *) output [31:0]c00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.C01 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.C01, LAYERED_METADATA undef" *) output [31:0]c01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.C10 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.C10, LAYERED_METADATA undef" *) output [31:0]c10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.C11 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.C11, LAYERED_METADATA undef" *) output [31:0]c11;

  wire [15:0]a00;
  wire [15:0]a01;
  wire [15:0]a10;
  wire [15:0]a11;
  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire [15:0]b00;
  wire [15:0]b01;
  wire [15:0]b10;
  wire [15:0]b11;
  wire [31:0]c00;
  wire [31:0]c01;
  wire [31:0]c10;
  wire [31:0]c11;

  bd_0_hls_inst_0 hls_inst
       (.a00(a00),
        .a01(a01),
        .a10(a10),
        .a11(a11),
        .ap_clk(ap_clk),
        .ap_done(ap_ctrl_done),
        .ap_idle(ap_ctrl_idle),
        .ap_ready(ap_ctrl_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_ctrl_start),
        .b00(b00),
        .b01(b01),
        .b10(b10),
        .b11(b11),
        .c00(c00),
        .c01(c01),
        .c10(c10),
        .c11(c11));
endmodule
