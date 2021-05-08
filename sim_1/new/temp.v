`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 07/03/2020 02:45:33 PM
// Design Name:
// Module Name: temp
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


module temp(

       );
reg [1:0] a, b, answer;
initial
  begin
    a = 2'b10;
    b = 2'b10;
    # 2;
    answer = ({1'b0,a} + b)>>1;
    $display("%b",answer);

  end
endmodule
