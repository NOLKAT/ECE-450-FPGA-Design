`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 08:26:56 PM
// Design Name: 
// Module Name: maxmul2x2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module maxmul2x2 #(
  parameter integer DATA_W = 16, // input width
  parameter integer ACC_W  = 32  // output width
)(
  input  wire                      ap_clk,
  input  wire                      ap_rst_n,   // active-LOW reset
  input  wire                      ap_start,   // pulse HIGH to start
  output reg                       ap_done,    // 1-clk pulse when done
  output wire                      ap_idle,    // always 1
  output wire                      ap_ready,   // always 1

  input  wire signed [DATA_W-1:0]  a00, a01, a10, a11,
  input  wire signed [DATA_W-1:0]  b00, b01, b10, b11,
  output reg  signed [ACC_W-1:0]   c00, c01, c10, c11
);

  // Always ready/idle
  assign ap_idle  = 1'b1;
  assign ap_ready = 1'b1;

  // Edge-detect ap_start to make a one-cycle start pulse
  reg start_d;
  wire start_pulse = ap_start & ~start_d;

  always @(posedge ap_clk) begin
    if (!ap_rst_n) begin
      start_d <= 1'b0;
      ap_done <= 1'b0;
      c00 <= '0; c01 <= '0; c10 <= '0; c11 <= '0;

    end else begin
      start_d <= ap_start;
      ap_done <= 1'b0;

      // Compute & register outputs on start_pulse
      if (start_pulse) begin
        c00 <= $signed(a00) * $signed(b00) + $signed(a01) * $signed(b10);
        c01 <= $signed(a00) * $signed(b01) + $signed(a01) * $signed(b11);
        c10 <= $signed(a10) * $signed(b00) + $signed(a11) * $signed(b10);
        c11 <= $signed(a10) * $signed(b01) + $signed(a11) * $signed(b11);
        ap_done <= 1'b1;
      end
    end
  end

endmodule
