`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2023 01:35:20 PM
// Design Name: 
// Module Name: le9_tb
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

module test;
  reg clk, reset;
  reg [3:0] ones;
  reg [3:0] tens;
  wire [3:0] anode;
  wire [6:0] seg7,
  output output;
    
  // Instantiate design under test
  seven_seg_drive U1(
  .clk(clk), .reset(reset), .ones(ones), .tens(tens), .anode(anode), .seg7_out(seg7));
    initial begin
    clk = 0;
    reset = 0;
    #2
    reset = 1;
    #2 
    ones = 'd1;
    tens = 'd0;
    reset = 0;
    #20000
    ones = 'd7;
    tens = 'd3;
    #20000
    $finish;
  end
  
  always begin
    #5
    clk = ~clk;
  end
  
endmodule
