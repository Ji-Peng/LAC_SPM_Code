// Author       : Jipeng Zhang
// Organization : Nanjing University of Aeronautics and Astronautics (NUAA)
// Version      : 1.0
// Modify Time  : 2020.07.18
// Contact      : jp-zhang@outlook.com
// Desc         : This is testbench of sparse_poly_multi module

`timescale 1ns/1ps

// parameters
`define Q 251
`define N 1024
`define CORE_NUM 2
`define H 384
`define COEFF_WIDTH 8

module sparse_poly_mul_tb_2;

parameter POS_WIDTH = $clog2(`N);
parameter POS_RAM_DEPTH = (`H+`CORE_NUM-1)/`CORE_NUM;
parameter POS_RAM_WIDTH = POS_WIDTH*`CORE_NUM;

// inputs
reg clk = 1'b0;
reg start = 1'b0;

// outputs
wire done;

reg ram_poly_wr_en = 1'b0;
reg [$clog2(`N)-1:0] ram_poly_wr_addr = 0;
reg [`COEFF_WIDTH * 2 - 1:0] ram_poly_data_in = 1'b1;

reg ram_pos_wr_en = 1'b0;
reg [$clog2(POS_RAM_DEPTH)-1:0] ram_pos_wr_addr = 0;
reg [POS_RAM_WIDTH-1:0] ram_pos_data_in = 0;

reg i_ram_res_rd_en = 0;
reg [$clog2(`N/2)-1:0] i_ram_res_rd_addr = 0;
wire [`COEFF_WIDTH*2-1:0] o_ram_res_data_out; // signed

sparse_mul_512_256_2  DUT (
              .clk(clk),
              .start(start),
              .done(done),
              .ram_poly_wr_en(ram_poly_wr_en),
              .ram_poly_wr_addr(ram_poly_wr_addr),
              .ram_poly_data_in(ram_poly_data_in),
              .ram_pos_wr_en(ram_pos_wr_en),
              .ram_pos_wr_addr(ram_pos_wr_addr),
              .ram_pos_data_in(ram_pos_data_in),
              .i_ram_res_rd_en(i_ram_res_rd_en),
              .i_ram_res_rd_addr(i_ram_res_rd_addr),
              .o_ram_res_data_out(o_ram_res_data_out)
            );

integer start_time;
integer res_file;
integer i;

initial
  begin
    // load input polynomials
    $display("start init polynomials");
    @(negedge clk)
     ram_poly_data_in = 1'b1;
    ram_poly_wr_en = 1'b1;
    ram_poly_wr_addr = 0;

    for (i=0; i<`N; i=i+1)
      begin
        @(negedge clk)
         ram_poly_wr_addr = i;
        ram_poly_data_in[`COEFF_WIDTH-1:0] = i % `Q;
        ram_poly_data_in[`COEFF_WIDTH*2-1:`COEFF_WIDTH] = (i+1 == 512 ? 0 : (i+1) % `Q);
        @(posedge clk)
         # 200;
      end

    ram_poly_wr_en = 1'b0;
    //--------------

    @(negedge clk)
     ram_pos_wr_en = 1'b1;
    ram_pos_wr_addr = 0;

    for (i=0; i<POS_RAM_DEPTH; i=i+1)
      begin
        @(negedge clk)
         ram_pos_wr_addr = i;
        ram_pos_data_in[(POS_WIDTH*1-1)-:POS_WIDTH] = i*`CORE_NUM+1;
        ram_pos_data_in[(POS_WIDTH*2-1)-:POS_WIDTH] = i*`CORE_NUM+2;
        // ram_pos_data_in[(POS_WIDTH*3-1)-:POS_WIDTH] = i*`CORE_NUM+3;
        // ram_pos_data_in[(POS_WIDTH*4-1)-:POS_WIDTH] = i*`CORE_NUM+4;
        @(posedge clk)
         # 200;
      end

    ram_pos_wr_en = 1'b0;

    //--------------
    # 20;
    $display("start computation");

    start <= 0;
    @(posedge clk)
     # 20;
    @(posedge clk)
     # 20;
    start_time = $time;
    // start拉高，接着就拉低
    start <= 1;
    @(posedge clk)
     # 20;
    start <= 0;
    @(posedge DUT.done);
    $display("runtime for sparse polynomial multiplication: %0d cycles", ($time-start_time)/40);
    $fflush();
    @(posedge clk)
     # 20;

    $display("read result out");

    res_file = $fopen("res.out", "w");

    @(negedge clk);

    i_ram_res_rd_en = 1'b1;

    for (i = 0; i < (`N/2); i=i+1)
      begin
        i_ram_res_rd_addr = i;
        @(posedge clk)
         # 200;
        $fwrite(res_file, "%b\n", o_ram_res_data_out[`COEFF_WIDTH-1:0]);
        $fwrite(res_file, "%b\n", o_ram_res_data_out[`COEFF_WIDTH*2-1:`COEFF_WIDTH]);
      end

    $fclose(res_file);
    @(posedge clk)
     # 20;

    $finish;
  end

always
  # 20 clk = !clk;

endmodule
