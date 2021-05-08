`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04/04/2020 02:50:22 PM
// Design Name:
// Module Name: poly_multi_v3
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

//transformation between vector representation and bit representation
`define INDEX8(i) ((i + 1) * 8 - 1)-:8
`define INDEX9(i) ((i + 1) * 9 - 1)-:9
// `define gen_j {{r_pc,{$clog2(p_ps){1'b0}}}+gen_i}
//r[i]
`define Ri i_poly_r[`INDEX9(r_i)]
//r[i+h/2]
`define Rih i_poly_r[`INDEX9(r_i + p_h/2)]
//MASK-8bit of j < r[i]
// `define MASK8Ri {8{`gen_j < `Ri}}
// //MASK-10bit of j < r[i]
// `define MASK10Ri {{1{`gen_j < `Ri}},{9{1'b0}}}
// //MASK-8bit of j < r[i+h/2]
// `define MASK8Rih {8{`gen_j < `Rih}}
// //inverse of `MASK8Rih
// `define IMASK8Rih {8{`gen_j >= `Rih}}
// //MASK-10bit of j < r[i+h/2]
// `define MASK10Rih {{1{`gen_j < `Rih}},{9{1'b0}}}
// //index for sum_one
// `define INDEX_A1 (p_n & `MASK10Ri) + `gen_j - `Ri
// //index for sum_mone
// `define INDEX_A2 (p_n & `MASK10Rih) + `gen_j - `Rih
// //A1 for sum_one
// `define A1 i_poly_a[`INDEX8(`INDEX_A1)]
// //A2 for sum_mone
// `define A2 i_poly_a[`INDEX8(`INDEX_A2)]
// //this will be added to r_sum_one
// `define ADD2_SUM_ONE (((p_q & `MASK8Ri) + (((`A1 ^ `MASK8Ri) + (`gen_j < `Ri)) & 9'b0_1111_1111)) & 9'b0_1111_1111)
// //item1 for sum_one
// //note that: use '& 9'b0_1111_1111' for avoiding casting from 8bit to 9bit
// `define ITEM1 (r_sum_one[`INDEX9(`gen_j)] + `ADD2_SUM_ONE)
// //this will be added to r_sum_mone
// `define ADD2_SUM_MONE (((p_q & `IMASK8Rih) + (((`A2 ^ `IMASK8Rih) + (`gen_j >= `Rih)) & 9'b0_1111_1111)) & 9'b0_1111_1111)
// //item2 for sum_mone
// `define ITEM2 (r_sum_mone[`INDEX9(`gen_j)] + `ADD2_SUM_MONE)
module inc_prototype  #(parameter width = 8, n = 2)
       (
         // clock
         input wire i_clock,
         // reset signal
         input wire i_reset,
         // polynomail a
         input wire [width * n - 1 : 0] i_poly_a,
         // polynomial r(error polynomial)
         // this is based on location-representation
         // the max value of each coefficient is 511, so width + 1
         input wire [(width + 1) * n - 1 : 0] i_poly_r,
         // the result = sum_one - sum_mone;
         output wire [width * n - 1 : 0] o_sum_one,
         output wire [width * n - 1 : 0] o_sum_mone,
         // done = 1 when the end of computation
         output reg o_done
       );
// h is the hamming weight of error polynomials
parameter p_width = 8, p_n = 2, p_h = 128, p_log_half_h = $clog2(p_h);
// q=251 for lac-light
parameter [p_width - 1:0] p_q = 8'b1111_1011;
// used to iterate
reg [p_log_half_h - 1:0] r_i = 'b0;
// p_width + 1 for avoiding data overflow
// TODO: p_width + ?
reg [(p_width + 1) * p_n - 1:0] r_sum_one = 'b0;
reg [(p_width + 1) * p_n - 1:0] r_sum_mone = 'b0;
// parameter about parallelism control
// how to control parallelism? just modify p_ps!!!
// parallel size
// parameter p_ps = 1;
// assuming p_ps=64, p_n=512, p_pc_width = log2(512/64) = 3
// parameter p_pc_width = $clog2(p_n/p_ps);
// parallel control bit, same with ping-pong operation
// reg [p_pc_width - 1 : 0] r_pc = {p_pc_width{1'b0}};
// wire [8:0] gen_j;

// genvar gen_i;

// output logic
assign o_sum_one[`INDEX8(0)] = r_sum_one[`INDEX9(0)];
assign o_sum_one[`INDEX8(1)] = r_sum_one[`INDEX9(1)];

assign o_sum_mone[`INDEX8(0)] = r_sum_mone[`INDEX9(0)];
assign o_sum_mone[`INDEX8(1)] = r_sum_mone[`INDEX9(1)];

// for every posedge r_i++
// I have to admit that this is software thinking method
always @ (posedge i_clock)
  begin : iterate_logic
    if (i_reset == 1'b1)
      begin
        o_done <= 1'b0;
        r_i <= 'b0;
      end
    else
      begin
        if ((r_i == 2 - 1))
          begin
            o_done <= 1'b1;
            r_i <= r_i;
          end
        else
          begin
            o_done <= 1'b0;
            r_i <= r_i + 1'b1;
          end
      end
  end

always @ (posedge i_clock)
begin:main_logic
    if(i_reset == 1'b1)
    begin
        r_sum_one <= 'b0;
        r_sum_mone <= 'b0;
    end
    else if (o_done == 1'b0)
    begin
        r_sum_one[`INDEX9(0)] <= r_sum_one[`INDEX9(0)] + `Ri;
        r_sum_one[`INDEX9(1)] <= r_sum_one[`INDEX9(1)] + `Rih;
        r_sum_mone[`INDEX9(0)] <= r_sum_mone[`INDEX9(0)] + `Ri;
        r_sum_mone[`INDEX9(1)] <= r_sum_mone[`INDEX9(1)] + `Rih;
    end
    else
    begin
        r_sum_one <= r_sum_one;
        r_sum_mone <= r_sum_mone;
    end
end

endmodule
