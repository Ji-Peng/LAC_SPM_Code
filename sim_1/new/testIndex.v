`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 03/31/2020 06:17:45 PM
// Design Name:
// Module Name: testIndex
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

`define MASK8 {8{0<1}}
`define MASK9 {9{1<=0}}
module testIndex(
       );
parameter p_n = 512;
parameter [4:0] p_x = 4'b0000;
reg test;
reg [8:0] t9;
reg [7:0] t8;
reg [7:0] w8;
initial
  begin
    test = (0<1);
    $display("%b",test);
    $display("MASK8 is %b, MASK9 is %b, MASK8 & 11111111 is %b, MASK9 & 11111111 is %b",`MASK8,`MASK9, `MASK8 & 8'b1111_1111, `MASK9 & 9'b1111_1111_1);
    t9 = 'b0;
    t8 = 8'b0000_0000;
    w8 = t8 + 1'b1;
    t9 = t9 + (((t8 ^ 8'b1111_1111) + (1>=0)) & 9'b0_1111_1111);
    #1
    $display("8bit-9bit: t9 is %b",t9);
    $display("p_n: %b, p_x %b",p_n, p_x);
  end

endmodule
