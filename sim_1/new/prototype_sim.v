`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2020 09:09:47 AM
// Design Name: 
// Module Name: prototype_sim
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


module prototype_sim(

    );

reg clock;
reg reset;
reg [15:0] poly_a;
reg [15:0] poly_r;
wire [15:0] sum_one;
wire [15:0] sum_mone;
wire done;
    prototype uut(
        .i_clock(clock),
        .i_reset(reset),
        .i_poly_a(poly_a),
        .i_poly_r(poly_r),
        .r_sum_one(sum_one),
        .r_sum_mone(sum_mone),
        .o_done(done)
    );

    initial
    begin
        clock = 1'b0;
        reset = 1'b1;
        poly_a = 1'b1;
        poly_r = 1'b1;

        #2
        reset = 1'b0;

        #6
        $display("sum_one is %b",sum_one);
        $display("sum_mone is %b",sum_mone); 

    end

    always
    begin
        #1
        clock = ~clock;
    end
endmodule
