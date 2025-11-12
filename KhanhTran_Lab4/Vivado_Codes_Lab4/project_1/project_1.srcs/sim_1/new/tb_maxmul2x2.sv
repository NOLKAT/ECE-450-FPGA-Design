`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 08:27:45 PM
// Design Name: 
// Module Name: tb_maxmul2x2
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


module tb_maxmul2x2;

  // DUT I/O
  logic clk = 0;
  logic rst_n = 0;
  logic ap_start;
  logic ap_done, ap_idle, ap_ready;
  logic  signed [15:0] a00,a01,a10,a11,b00,b01,b10,b11;
  logic  signed [31:0] c00,c01,c10,c11;

  // 100 MHz clock
  always #5 clk = ~clk;

  // DUT
  maxmul2x2 #(.DATA_W(16), .ACC_W(32)) dut (
    .ap_clk(clk),
    .ap_rst_n(rst_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .a00(a00), .a01(a01), .a10(a10), .a11(a11),
    .b00(b00), .b01(b01), .b10(b10), .b11(b11),
    .c00(c00), .c01(c01), .c10(c10), .c11(c11)
  );

  // Task to run one vector
  task run_vec(
    input  shortint sa00, sa01, sa10, sa11,
    input  shortint sb00, sb01, sb10, sb11,
    input  int      ec00, ec01, ec10, ec11
  );
  begin
    a00=sa00; a01=sa01; a10=sa10; a11=sa11;
    b00=sb00; b01=sb01; b10=sb10; b11=sb11;

    @(posedge clk);
    ap_start <= 1;
    @(posedge clk);
    ap_start <= 0;

    // Wait for 1-cycle ap_done pulse
    wait (ap_done);
    @(posedge clk);

    $display("C = [[%0d,%0d],[%0d,%0d]]", c00,c01,c10,c11);
    if (c00!==ec00 || c01!==ec01 || c10!==ec10 || c11!==ec11) begin
      $fatal(1, "Mismatch: exp [[%0d,%0d],[%0d,%0d]]", ec00,ec01,ec10,ec11);
    end
  end
  endtask

  initial begin
    // Reset
    ap_start = 0;
    a00=0; a01=0; a10=0; a11=0; b00=0; b01=0; b10=0; b11=0;
    repeat (5) @(posedge clk);
    rst_n = 1;

    // Vec1: A=[[1,2],[3,4]]; B=[[5,6],[7,8]]; C=[[19,22],[43,50]]
    run_vec(1,2,3,4,  5,6,7,8,  19,22,43,50);

    // Vec2: A=[[-1,2],[4,-3]]; B=[[2,1],[0,5]]; C=[[-2,9],[8,-11]]
    run_vec(-1,2,4,-3,  2,1,0,5,  -2,9,8,-11);

    $display("PASS");
    $finish;
  end

endmodule
