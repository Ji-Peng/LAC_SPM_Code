
// Author       : Jipeng Zhang
// Organization : Nanjing University of Aeronautics and Astronautics (NUAA)
// Version      : 1.0
// Modify Time  : 2020.07.18
// Contact      : jp-zhang@outlook.com
// Desc         : This is the sparse polynomial multiplication (sparse_poly_multi) module of the LAC scheme.
//  ram_poly (dual port ram) is used to save dense polynomials.
//  ram_pos (single port ram) is used to save position polynomials.
//    ram_pos[i] = {pos[i*p+p-1], ..., pos[i*p+0]}
//  ram_res (dual port ram) is used to save intermediate and final results.
//  process:
//    1. get position from ram_pos
//    2. calculate the read address of ram_poly
//    3. addition of p coefficients from ram_poly
//    4. addition of coefficients and the output of ram_res
//    5. write the result to ram_res
 
module sparse_mul_512_256_2
#(
  // module of LAC
  parameter Q = 251,
  // the length of polynomial
  parameter N = 512,
  // the number of cores in parallel computing
  parameter CORE_NUM = 2,
  // the number of non-zero coefficients in a sparse polynomial
  parameter H = 256,
  // the width of a polynomial coefficient
  parameter COEFF_WIDTH = 8,
  // used to initial ram_poly
  parameter FILE_POLY = "",
  // used to initial ram_pos
  parameter FILE_POS = "",
  // the width of dense polynomial index
  parameter POS_WIDTH = $clog2(N),
  // the depth of position polynomial in ram. "+CORE_NUM-1" is used for rounding
  parameter POS_RAM_DEPTH = (H+CORE_NUM-1)/CORE_NUM,
  // the width of position polynomial in ram
  parameter POS_RAM_WIDTH = POS_WIDTH*CORE_NUM
)
(
  // clock signal
  input wire clk,
  // the start of the calculation
  input wire start,
  // the end of the calculation
  output reg done = 1'b0,
  // the inner state of this module
  output reg busy = 1'b0,

  // write enable signal of ram_poly
  input wire ram_poly_wr_en,
  // write address of ram_poly
  input wire [$clog2(N)-1:0] ram_poly_wr_addr,
  // input data of ram_poly
  input wire [COEFF_WIDTH * 2 - 1:0] ram_poly_data_in,

  // write enable signal of ram_pos
  input wire ram_pos_wr_en,
  // write address of ram_pos
  input wire [$clog2(POS_RAM_DEPTH)-1:0] ram_pos_wr_addr,
  // input data of ram_pos
  input wire [POS_RAM_WIDTH-1:0] ram_pos_data_in,

  // read enable signal of ram_res
  input wire i_ram_res_rd_en,
  // read address of ram_res
  input wire [$clog2(N/2)-1:0] i_ram_res_rd_addr,

  // output data of ram_res
  output reg [COEFF_WIDTH * 2 - 1 : 0] o_ram_res_data_out
);

// ------------------------------------------------------------------

// outside loop counter
reg [$clog2(POS_RAM_DEPTH)-1:0] outside_looper = {$clog2(POS_RAM_DEPTH){1'b0}};

// first outside loop
reg first_outside_loop = 1'b0;

// outside loop end
reg inner_loop_done = 1'b0;

// inner loop start counting
wire inner_looper_start;

// the index of position polynomial
reg [$clog2(H)-1:0] outside_looper_p = {$clog2(H){1'b0}};

// inner loop counter
reg [$clog2(N)-1:0] inner_looper = {$clog2(N){1'b0}};

// read address of ram_pos
reg [$clog2(POS_RAM_DEPTH)-1:0] ram_pos_rd_addr = {$clog2(POS_RAM_DEPTH){1'b0}};

// output ({position_0, position_1, position_2, position_3}) of ram_pos
wire [POS_RAM_WIDTH-1:0] ram_pos_dout;

wire [POS_WIDTH-1:0] position_0;
wire [POS_WIDTH-1:0] position_1;

// valid signal of the output of ram_pos
wire ram_pos_dout_valid;

// ram_pos_dout_valid & busy
wire ram_pos_dout_valid_busy;

// the address of reading ram_poly

reg [$clog2(N)-1:0] ram_poly_rd_addr_0 = {($clog2(N)){1'b0}};
reg [$clog2(N)-1:0] ram_poly_rd_addr_1 = {($clog2(N)){1'b0}};
// output of ram_poly

reg [COEFF_WIDTH * 2 - 1 : 0] ram_poly_dout_0_reg = {(COEFF_WIDTH * 2){1'b0}};
wire [COEFF_WIDTH * 2 - 1 : 0] ram_poly_dout_0;
wire [COEFF_WIDTH - 1 : 0] ram_poly_dout_0_l, ram_poly_dout_0_h;


reg [COEFF_WIDTH * 2 - 1 : 0] ram_poly_dout_1_reg = {(COEFF_WIDTH * 2){1'b0}};
wire [COEFF_WIDTH * 2 - 1 : 0] ram_poly_dout_1;
wire [COEFF_WIDTH - 1 : 0] ram_poly_dout_1_l, ram_poly_dout_1_h;

// sign of each dense polynomial coefficient
wire sign_0_l, sign_0_h;
wire sign_1_l, sign_1_h;

// the value will be corrected by sign and related position for further addition
reg [COEFF_WIDTH-1:0] ram_poly_dout_corrected_0_l = {COEFF_WIDTH{1'b0}};
reg [COEFF_WIDTH-1:0] ram_poly_dout_corrected_0_h = {COEFF_WIDTH{1'b0}};

reg [COEFF_WIDTH-1:0] ram_poly_dout_corrected_1_l = {COEFF_WIDTH{1'b0}};
reg [COEFF_WIDTH-1:0] ram_poly_dout_corrected_1_h = {COEFF_WIDTH{1'b0}};

// sum of dense polynomial coefficient
wire [COEFF_WIDTH+0:0] ram_poly_dout_corrected_sum_l;
wire [COEFF_WIDTH+0:0] ram_poly_dout_corrected_sum_h;

reg [COEFF_WIDTH+0:0] ram_poly_dout_corrected_sum_buf_l = {(COEFF_WIDTH+0+1){1'b0}};
reg [COEFF_WIDTH+0:0] ram_poly_dout_corrected_sum_buf_h = {(COEFF_WIDTH+0+1){1'b0}};

// module q reduction
wire [COEFF_WIDTH:0] ram_poly_dout_corrected_sum_corrected_0_l;
wire [COEFF_WIDTH:0] ram_poly_dout_corrected_sum_corrected_0_h;
wire [COEFF_WIDTH-1:0] ram_poly_dout_corrected_sum_corrected_1_l;
wire [COEFF_WIDTH-1:0] ram_poly_dout_corrected_sum_corrected_1_h;

reg [COEFF_WIDTH:0] ram_poly_dout_corrected_sum_corrected_0_buf_l = {(COEFF_WIDTH+1){1'b0}};
reg [COEFF_WIDTH:0] ram_poly_dout_corrected_sum_corrected_0_buf_h = {(COEFF_WIDTH+1){1'b0}};
reg [COEFF_WIDTH-1:0] ram_poly_dout_corrected_sum_corrected_1_buf_l = {(COEFF_WIDTH+0){1'b0}};
reg [COEFF_WIDTH-1:0] ram_poly_dout_corrected_sum_corrected_1_buf_h = {(COEFF_WIDTH+0){1'b0}};

// read ram_res enable signal
wire ram_res_rd_en_start;

// the address of read ram_res
reg [$clog2(N/2)-1:0] ram_res_rd_addr = {$clog2(N/2){1'b0}};

// the output of ram_res
wire [COEFF_WIDTH * 2 - 1 : 0] ram_res_data_out_wire;
wire [COEFF_WIDTH - 1 : 0] ram_res_data_out_wire_l, ram_res_data_out_wire_h;

// if(first_outside_loop) data_out=0
wire [COEFF_WIDTH - 1 : 0] ram_res_data_out_corrected_l, ram_res_data_out_corrected_h;

// sum of dense polynomial coefficients and ram_res_data
wire [COEFF_WIDTH  : 0] ram_dout_sum_l, ram_dout_sum_h;
reg [COEFF_WIDTH : 0] ram_dout_sum_buf_l, ram_dout_sum_buf_h;
wire [COEFF_WIDTH - 1 : 0] ram_dout_sum_corr_l, ram_dout_sum_corr_h;
// advanced signal of ram_res_wr_en
wire ram_res_wr_en_start;

// write enable signal of ram_res
reg ram_res_wr_en = 1'b0;

// the address of writing ram_res
reg [$clog2(N/2)-1:0] ram_res_wr_addr = {$clog2(N/2){1'b0}};

// the data of writing into ram_res
reg [COEFF_WIDTH * 2 - 1:0] ram_res_din = {(COEFF_WIDTH*2){1'b0}};

// ------------------------------------------------------------------

assign ram_pos_dout_valid_busy = ram_pos_dout_valid & busy;

// extract positions from the output of ram_pos
assign position_0 = ram_pos_dout[POS_WIDTH*1-1:POS_WIDTH*0];
assign position_1 = ram_pos_dout[POS_WIDTH*2-1:POS_WIDTH*1];
// 1: positive number 0: negative number
assign sign_0_l = (outside_looper_p < H/2) ? 1'b1 : 1'b0;
assign sign_0_h = (outside_looper_p < H/2) ? 1'b1 : 1'b0;

assign sign_1_l = (outside_looper_p < H/2) ? 1'b1 : 1'b0;
assign sign_1_h = (outside_looper_p < H/2) ? 1'b1 : 1'b0;

// extract two coefficients
assign ram_poly_dout_0_l = ram_poly_dout_0_reg[COEFF_WIDTH - 1 : 0];
assign ram_poly_dout_0_h = ram_poly_dout_0_reg[COEFF_WIDTH * 2 - 1 : COEFF_WIDTH];
  
assign ram_poly_dout_1_l = ram_poly_dout_1_reg[COEFF_WIDTH - 1 : 0];
assign ram_poly_dout_1_h = ram_poly_dout_1_reg[COEFF_WIDTH * 2 - 1 : COEFF_WIDTH];
  
// parallel addition
assign ram_poly_dout_corrected_sum_l = ram_poly_dout_corrected_0_l + ram_poly_dout_corrected_1_l;
assign ram_poly_dout_corrected_sum_h = ram_poly_dout_corrected_0_h + ram_poly_dout_corrected_1_h;
// module Q reduction
assign ram_poly_dout_corrected_sum_corrected_0_l = ram_poly_dout_corrected_sum_buf_l;
assign ram_poly_dout_corrected_sum_corrected_0_h = ram_poly_dout_corrected_sum_buf_h;

// module Q reduction
assign ram_poly_dout_corrected_sum_corrected_1_l = (ram_poly_dout_corrected_sum_corrected_0_buf_l >= 1*Q) ? (ram_poly_dout_corrected_sum_corrected_0_buf_l - 1*Q) :
       ram_poly_dout_corrected_sum_corrected_0_buf_l;
assign ram_poly_dout_corrected_sum_corrected_1_h = (ram_poly_dout_corrected_sum_corrected_0_buf_h >= 1*Q) ? (ram_poly_dout_corrected_sum_corrected_0_buf_h - 1*Q) :
       ram_poly_dout_corrected_sum_corrected_0_buf_h;

// extract the output of ram_res
assign ram_res_data_out_wire_l = ram_res_data_out_wire[COEFF_WIDTH - 1 : 0];
assign ram_res_data_out_wire_h = ram_res_data_out_wire[COEFF_WIDTH * 2 - 1 : COEFF_WIDTH];

// correcting according to first_outside_loop because we can not reset ram
assign ram_res_data_out_corrected_l = first_outside_loop ? {COEFF_WIDTH{1'b0}} : ram_res_data_out_wire_l;
assign ram_res_data_out_corrected_h = first_outside_loop ? {COEFF_WIDTH{1'b0}} : ram_res_data_out_wire_h;

// add sum of p coefficients and the output of ram_res
assign ram_dout_sum_l = ram_res_data_out_corrected_l + ram_poly_dout_corrected_sum_corrected_1_buf_l;
assign ram_dout_sum_h = ram_res_data_out_corrected_h + ram_poly_dout_corrected_sum_corrected_1_buf_h;

assign ram_dout_sum_corr_l = (ram_dout_sum_buf_l >= 1*Q) ? (ram_dout_sum_buf_l - 1*Q) : ram_dout_sum_buf_l;
assign ram_dout_sum_corr_h = (ram_dout_sum_buf_h >= 1*Q) ? (ram_dout_sum_buf_h - 1*Q) : ram_dout_sum_buf_h;

always @(posedge clk)
  begin
    // module inner working state
    busy <= start ? 1'b1 :
         done ? 1'b0 :
         busy;

    // computation done
    done <= (inner_loop_done & (outside_looper == (POS_RAM_DEPTH-1)));

    // if(first_outside_loop) the output of ram_res is zeros
    first_outside_loop <= start ? 1'b1 :
                       inner_loop_done ? 1'b0 :
                       first_outside_loop;

    // outside_looper++
    outside_looper <= (start | done) ? {($clog2(POS_RAM_DEPTH)){1'b0}} :
                   inner_loop_done ? outside_looper + 1 :
                   outside_looper;

    // outside_looper+=p, this is real outside loop counter
    outside_looper_p <= (start | done) ? {($clog2(H)){1'b0}} :
                     inner_loop_done ? outside_looper_p + CORE_NUM :
                     outside_looper_p;

    // inner loop counter ++
    inner_looper <= (start | inner_loop_done) ? {($clog2(N)){1'b0}} :
                 (inner_looper_start | (inner_looper > 0)) ? inner_looper + 2 :
                 inner_looper;

    // inner loop done
    inner_loop_done <= busy & (ram_res_wr_addr == (N/2-2));

    // read address of ram_pos, ++ when inner loop is done
    ram_pos_rd_addr <= (start | done) ? 1'b0 :
                    inner_loop_done ? ram_pos_rd_addr + 1 :
                    ram_pos_rd_addr;

    // read address of ram_res
    ram_res_rd_addr <= (start | inner_loop_done) ? 1'b0 :
                    (ram_res_rd_en_start | (ram_res_rd_addr > 0)) ?  ram_res_rd_addr + 1 :
                    ram_res_rd_addr;

    // compute read address of ram_poly
ram_poly_rd_addr_0 <= ram_pos_dout_valid_busy ? N - position_0 :
                       busy ? ram_poly_rd_addr_0 + 2 :
                       ram_poly_rd_addr_0;

ram_poly_rd_addr_1 <= ram_pos_dout_valid_busy ? N - position_1 :
                       busy ? ram_poly_rd_addr_1 + 2 :
                       ram_poly_rd_addr_1;

// correcting according to the sign of each coefficient
ram_poly_dout_corrected_0_l <= (sign_0_l & (inner_looper >= position_0)) | ((sign_0_l == 1'b0) & (inner_looper < position_0)) ? ram_poly_dout_0_l :
                                Q-ram_poly_dout_0_l;
    ram_poly_dout_corrected_0_h <= (sign_0_h & (inner_looper + 1>= position_0)) | ((sign_0_h == 1'b0) & (inner_looper + 1 < position_0)) ? ram_poly_dout_0_h :
                                Q-ram_poly_dout_0_h;

ram_poly_dout_corrected_1_l <= (sign_1_l & (inner_looper >= position_1)) | ((sign_1_l == 1'b0) & (inner_looper < position_1)) ? ram_poly_dout_1_l :
                                Q-ram_poly_dout_1_l;
    ram_poly_dout_corrected_1_h <= (sign_1_h & (inner_looper + 1>= position_1)) | ((sign_1_h == 1'b0) & (inner_looper + 1 < position_1)) ? ram_poly_dout_1_h :
                                Q-ram_poly_dout_1_h;

// write the addition result to ram_res
    ram_res_wr_en <= (start | inner_loop_done) ? 1'b0 :
                  ram_res_wr_en_start ? 1'b1 :
                  ram_res_wr_en;

    // write address of ram_res
    ram_res_wr_addr <= (start | inner_loop_done) ? {$clog2(N){1'b0}} :
                    ram_res_wr_en ? ram_res_wr_addr + 1 :
                    ram_res_wr_addr;

    // reg buf for pipeline
    ram_poly_dout_corrected_sum_buf_l <= ram_poly_dout_corrected_sum_l;
    ram_poly_dout_corrected_sum_buf_h <= ram_poly_dout_corrected_sum_h;

    ram_poly_dout_corrected_sum_corrected_0_buf_l <= ram_poly_dout_corrected_sum_corrected_0_l;
    ram_poly_dout_corrected_sum_corrected_0_buf_h <= ram_poly_dout_corrected_sum_corrected_0_h;

    ram_poly_dout_corrected_sum_corrected_1_buf_l <= ram_poly_dout_corrected_sum_corrected_1_l;
    ram_poly_dout_corrected_sum_corrected_1_buf_h <= ram_poly_dout_corrected_sum_corrected_1_h;

    ram_res_din <= {ram_dout_sum_corr_h, ram_dout_sum_corr_l};

    ram_dout_sum_buf_l <= ram_dout_sum_l;
    ram_dout_sum_buf_h <= ram_dout_sum_h;
    // reg buf for reg output
    o_ram_res_data_out <= ram_res_data_out_wire;

ram_poly_dout_0_reg <= ram_poly_dout_0;
ram_poly_dout_1_reg <= ram_poly_dout_1;
end

// copy of dense polynomial
ram_dual #(.WIDTH(COEFF_WIDTH * 2), .DEPTH(N)) ram_dual_poly_copy_inst_0_1 (
           .clk(clk),
           .data_0(ram_poly_data_in),
           .data_1({(COEFF_WIDTH * 2){1'b0}}),
           .address_0(ram_poly_wr_en ? ram_poly_wr_addr : ram_poly_rd_addr_0),
           .address_1(ram_poly_rd_addr_1),
           .wren_0(ram_poly_wr_en),
           .wren_1(1'b0),
           .q_0(ram_poly_dout_0),
           .q_1(ram_poly_dout_1)
         );
  

// ram of position polynomial
ram #(.WIDTH(POS_RAM_WIDTH), .DEPTH(POS_RAM_DEPTH)) ram_pos_inst(
      .clk(clk),
      .data(ram_pos_data_in),
      .rdaddress(ram_pos_rd_addr),
      .rden(busy),
      .wraddress(ram_pos_wr_addr),
      .wren(ram_pos_wr_en),
      .q(ram_pos_dout)
    );
    
// ram of intermediate and final results
ram_dual #(.WIDTH(COEFF_WIDTH * 2), .DEPTH(N / 2)) ram_dual_res_inst (
           .clk(clk),
           .data_0(ram_res_din),
           .data_1({(COEFF_WIDTH * 2){1'b0}}),
           .address_0(ram_res_wr_addr),
           .address_1(i_ram_res_rd_en ? i_ram_res_rd_addr : ram_res_rd_addr),
           .wren_0(ram_res_wr_en),
           .wren_1(1'b0),
           .q_0(),
           .q_1(ram_res_data_out_wire)
         );
         
// delay1: initialize all related signals, delay2: get the output of ram_pos
delay #(.WIDTH(1), .DELAY(2)) delay_inst_ram_pos_dout_valid(
        .clk(clk),
        .din(start | inner_loop_done),
        .dout(ram_pos_dout_valid)
      );

// delay1: calculate the address of reading ram_poly, delay2: get the output of ram_poly
delay #(.WIDTH(1), .DELAY(3)) delay_inst_inner_looper_start(
        .clk(clk),
        .din(ram_pos_dout_valid_busy),
        .dout(inner_looper_start)
      );

// delay1: addition of p coefficients from ram_poly, delay2-delay3: module Q reduction
delay #(.WIDTH(1), .DELAY(3)) delay_inst_ram_res_rd_en_start(
        .clk(clk),
        .din(inner_looper_start),
        .dout(ram_res_rd_en_start)
      );

// delay1: computing all addition
delay #(.WIDTH(1), .DELAY(2)) delay_inst_ram_res_wr_en_start(
        .clk(clk),
        .din(ram_res_rd_en_start),
        .dout(ram_res_wr_en_start)
      );

endmodule
