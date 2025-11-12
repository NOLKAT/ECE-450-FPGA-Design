//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Wed Nov  5 17:11:16 2025
//Host        : katnlot running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
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
  input [15:0]a00;
  input [15:0]a01;
  input [15:0]a10;
  input [15:0]a11;
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;
  input [15:0]b00;
  input [15:0]b01;
  input [15:0]b10;
  input [15:0]b11;
  output [31:0]c00;
  output [31:0]c01;
  output [31:0]c10;
  output [31:0]c11;

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

  bd_0 bd_0_i
       (.a00(a00),
        .a01(a01),
        .a10(a10),
        .a11(a11),
        .ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst),
        .b00(b00),
        .b01(b01),
        .b10(b10),
        .b11(b11),
        .c00(c00),
        .c01(c01),
        .c10(c10),
        .c11(c11));
endmodule
