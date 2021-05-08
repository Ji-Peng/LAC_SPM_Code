`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 03/28/2020 04:22:38 PM
// Design Name:
// Module Name: poly_multi_tb
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
`define width 8
`define n 512
`define READ_A \
    //read a \
    for (i = 4095; i >= 0; i=i-1) \
      begin \
        r_poly_a[i] = $fgetc(fp_r); \
      end \
    space = $fgetc(fp_r);
// $display("r_poly_a: %b", r_poly_a);

`define READ_R \
    //read r \
    for (i = 4607; i >= 0; i=i-1) \
      begin \
        r_poly_r[i] = $fgetc(fp_r); \
      end \
    space = $fgetc(fp_r);
// $display("r_poly_r: %b", r_poly_r);

`define READ_SUM_ONE \
    //read sum_one \
    for (i = 4095; i >= 0; i=i-1) \
      begin \
        r_sum_one[i] = $fgetc(fp_r); \
      end \
    space = $fgetc(fp_r); 
// $display("r_sum_one: %b", r_sum_one);

`define READ_SUM_MONE \
    //read sum_mone \
    for (i = 4095; i >= 0; i=i-1) \
      begin \
        r_sum_mone[i] = $fgetc(fp_r); \
      end \
    space = $fgetc(fp_r); 
// $display("r_sum_mone: %b", r_sum_mone);
module poly_multi_tb(
       );

//Input
reg clock;
reg reset;
wire [`width * `n - 1 : 0] poly_a;
wire [(`width + 1) * `n - 1 : 0] poly_r;
wire [`width * `n - 1 : 0] sum_one;
wire [`width * `n - 1 : 0] sum_mone;
wire done;

integer fp_r, i, space, j;
reg [`width * `n - 1 : 0] r_poly_a;
reg [(`width + 1) * `n - 1 : 0] r_poly_r;
reg [`width * `n - 1 : 0] r_sum_one;
reg [`width * `n - 1 : 0] r_sum_mone;

poly_multi_v5 uut(
             .i_clock(clock),
             .i_reset(reset),
             .i_poly_a(poly_a),
             .i_poly_r(poly_r),
             .o_sum_one(sum_one),
             .o_sum_mone(sum_mone),
             .o_done(done)
           );

initial
  begin
    clock = 1'b0;
    reset = 1'b1;

    // fp_r = $fopen("E:\\PostGraduate\\Cryptography\\Code\\LAC\\lac-intel64-master-old\\ref\\poly_multi_tb.txt","r");
    fp_r = $fopen("E:\\PostGraduate\\Cryptography\\Code\\LAC\\lac-intel64-master-old\\ref\\poly_multi_tb_oneloop.txt","r");


    `READ_A
      `READ_R
      `READ_SUM_ONE
      `READ_SUM_MONE
      // reset
      #2
      reset = 1'b0;
    // #2 == 1loop #1024 == 512loop
    // 65536 = 64 * 512 * 2
    // #65536
    // # 12800 
    wait(done==1'b1);
     // $display("after #1024 time is %t",$time);
    $display("%s", ((sum_one == r_sum_one) ?   "sum1 right" : "sum1 error"));
    $display("%s", ((sum_mone == r_sum_mone) ? "sum2 right" : "sum2 error"));
    $display("sum_one is    %b",sum_one);
    $display("r_sum_one is  %b",r_sum_one);
    $display("sum_mone is   %b",sum_mone);
    $display("r_sum_mone is %b",r_sum_mone);

    $fclose(fp_r);
  end

always
  begin
    #1
     clock = ~clock;
  end

assign poly_a = r_poly_a;
assign poly_r = r_poly_r;

endmodule
