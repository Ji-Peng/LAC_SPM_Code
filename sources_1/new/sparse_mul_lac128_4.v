
// this module is for sparse polynomial multiplication
// it assumes that polynomials are stored in memories before the multiplication starts
// expected memory format:
// non-sparse polynomial (suppose parallelism = 4)
// -- b0      --
// -- b1      --
// -- ...     --
// -- b_(N-1) --
// sparse polynomial
// -- p3,s3; p2,s2; p1,s1; p0, s0 --
// -- p7,s7; p6,s6; p5,s5; p4, s4 --
// -- ...                         --
// -- ZEROES ... p*,s*            --
 
module sparse_mul_lac128_4
#(
  parameter PARAM_Q = 251,
  parameter POLY_LEN = 512, // 512
  parameter CORE_NUM = 4, // 1, 2, 4, 8, 16, ..., 512
  parameter SPARSE_NUM = 256, // 30, qTESLA_I
  parameter COEFF_WIDTH = 8, // 32
  parameter FILE_POLY = "", // initialization file for poly memories
  parameter FILE_POS = "", // initialization file for position + sign memory
  parameter POS_WIDTH = $clog2(POLY_LEN),
  parameter POS_MEM_DEPTH = (SPARSE_NUM+CORE_NUM-1)/CORE_NUM,
  parameter POS_MEM_WIDTH = (POS_WIDTH + 1)*CORE_NUM // one bit is for sign, 0->(-1), 1->(+1)
)
(
	input wire rst,
	input wire clk,
	input wire start,
	output reg done = 1'b0,
  output reg busy = 1'b0,
  
  // comp_type = 1 -> no-correction; comp_type = 2 -> correction
  input wire [1:0] comp_type,

 // interface for memory initialization 
   // memory for storing the non-sparse polynomial
  input wire mem_poly_wren,   
  input wire [$clog2(POLY_LEN)-1:0] mem_poly_wr_addr, 
  input wire signed [COEFF_WIDTH-1:0] mem_poly_din,
    
    // memory for storing the sparse polynomial: position + sign
  input wire mem_pos_wren,
  input wire [$clog2(POS_MEM_DEPTH)-1:0] mem_pos_wr_addr,
  input wire [POS_MEM_WIDTH-1:0] mem_pos_din, 
    
    // memory for storing the temporary computation result and final result
  input wire sw_mem_res_rden,
  input wire [$clog2(POLY_LEN)-1:0] sw_mem_res_rd_addr,
  output wire signed [COEFF_WIDTH-1:0] mem_res_dout
); 

// read interface of non-sparse polynomial memory
reg [$clog2(POLY_LEN)-1:0] mem_poly_rd_addr_0 = {($clog2(POLY_LEN)){1'b0}};
reg [$clog2(POLY_LEN)-1:0] mem_poly_rd_addr_1 = {($clog2(POLY_LEN)){1'b0}};
reg [$clog2(POLY_LEN)-1:0] mem_poly_rd_addr_2 = {($clog2(POLY_LEN)){1'b0}};
reg [$clog2(POLY_LEN)-1:0] mem_poly_rd_addr_3 = {($clog2(POLY_LEN)){1'b0}};

wire signed [COEFF_WIDTH-1:0] mem_poly_dout_0; 
wire signed [COEFF_WIDTH-1:0] mem_poly_dout_1; 
wire signed [COEFF_WIDTH-1:0] mem_poly_dout_2; 
wire signed [COEFF_WIDTH-1:0] mem_poly_dout_3; 

// value is corrected depending on the sign value and the position value
reg signed [COEFF_WIDTH-1:0] mem_poly_dout_corrected_0 = {COEFF_WIDTH{1'b0}}; 
reg signed [COEFF_WIDTH-1:0] mem_poly_dout_corrected_1 = {COEFF_WIDTH{1'b0}}; 
reg signed [COEFF_WIDTH-1:0] mem_poly_dout_corrected_2 = {COEFF_WIDTH{1'b0}}; 
reg signed [COEFF_WIDTH-1:0] mem_poly_dout_corrected_3 = {COEFF_WIDTH{1'b0}}; 
 
reg [$clog2(POS_MEM_DEPTH)-1:0] mem_pos_rd_addr = {$clog2(POS_MEM_DEPTH){1'b0}};
wire [POS_MEM_WIDTH-1:0] mem_pos_dout;

// extract each sign
wire sign_0;
wire sign_1;
wire sign_2;
wire sign_3;

// extract each position
wire [POS_WIDTH-1:0] position_0;
wire [POS_WIDTH-1:0] position_1;
wire [POS_WIDTH-1:0] position_2;
wire [POS_WIDTH-1:0] position_3;

wire signed [COEFF_WIDTH:0] mem_dout_sum;

reg mem_res_wren = 1'b0; 
reg [$clog2(POLY_LEN)-1:0] mem_res_wr_addr = {$clog2(POLY_LEN){1'b0}};
reg [$clog2(POLY_LEN)-1:0] mem_res_rd_addr = {$clog2(POLY_LEN){1'b0}};
reg signed [COEFF_WIDTH-1:0] mem_res_din = {COEFF_WIDTH{1'b0}};  
wire signed [COEFF_WIDTH-1:0] mem_res_dout_corrected; 

reg first_round = 1'b0;
reg last_round = 1'b0;
reg [$clog2(POS_MEM_DEPTH)-1:0] round_counter = {$clog2(POS_MEM_DEPTH){1'b0}};
reg [$clog2(POLY_LEN)-1:0] read_counter = {$clog2(POLY_LEN){1'b0}}; // count how many data has been read from the polynomial memory

reg round_done = 1'b0; 

wire mem_pos_dout_valid_pre;
wire mem_pos_dout_valid;

wire mem_res_rd_en_start;
wire mem_res_wr_en_start;
wire read_counter_start;

wire signed [COEFF_WIDTH+1:0] mem_poly_dout_corrected_sum;

wire signed [COEFF_WIDTH+1-1:0] mem_poly_dout_corrected_sum_corrected_0;
wire signed [COEFF_WIDTH+0-1:0] mem_poly_dout_corrected_sum_corrected_1;

reg signed [COEFF_WIDTH+1-1:0] mem_poly_dout_corrected_sum_corrected_0_buf = {(COEFF_WIDTH+1){1'b0}};
reg signed [COEFF_WIDTH+0-1:0] mem_poly_dout_corrected_sum_corrected_1_buf = {(COEFF_WIDTH+0){1'b0}};

reg signed [COEFF_WIDTH+1:0] mem_poly_dout_corrected_sum_buf = {(COEFF_WIDTH+1+1){1'b0}};

assign mem_pos_dout_valid = mem_pos_dout_valid_pre & busy;

// sign
assign sign_0 = mem_pos_dout[(POS_WIDTH + 1)*0];
assign sign_1 = mem_pos_dout[(POS_WIDTH + 1)*1];
assign sign_2 = mem_pos_dout[(POS_WIDTH + 1)*2];
assign sign_3 = mem_pos_dout[(POS_WIDTH + 1)*3];

// position
assign position_0 = mem_pos_dout[(POS_WIDTH + 1)*1-1:(POS_WIDTH + 1)*0+1];
assign position_1 = mem_pos_dout[(POS_WIDTH + 1)*2-1:(POS_WIDTH + 1)*1+1];
assign position_2 = mem_pos_dout[(POS_WIDTH + 1)*3-1:(POS_WIDTH + 1)*2+1];
assign position_3 = mem_pos_dout[(POS_WIDTH + 1)*4-1:(POS_WIDTH + 1)*3+1];

// sum of all the entries
assign mem_poly_dout_corrected_sum = mem_poly_dout_corrected_0 + mem_poly_dout_corrected_1 + mem_poly_dout_corrected_2 + mem_poly_dout_corrected_3;

// in range [-q, q)
assign mem_poly_dout_corrected_sum_corrected_0 = (mem_poly_dout_corrected_sum_buf >= 2*PARAM_Q) ? (mem_poly_dout_corrected_sum_buf - 2*PARAM_Q) : 
                                                 ((mem_poly_dout_corrected_sum_buf + 2*PARAM_Q) < 0) ? (mem_poly_dout_corrected_sum_buf + 2*PARAM_Q) :
                                                 mem_poly_dout_corrected_sum_buf;

// in range [-q, q)
assign mem_poly_dout_corrected_sum_corrected_1 = (mem_poly_dout_corrected_sum_corrected_0_buf >= 1*PARAM_Q) ? (mem_poly_dout_corrected_sum_corrected_0_buf - 1*PARAM_Q) :
                                                 ((mem_poly_dout_corrected_sum_corrected_0_buf + 1*PARAM_Q) < 0) ? (mem_poly_dout_corrected_sum_corrected_0_buf + 1*PARAM_Q) : 
                                                 mem_poly_dout_corrected_sum_corrected_0_buf;
assign mem_res_dout_corrected = first_round ? {COEFF_WIDTH{1'b0}} : mem_res_dout;
 
// in range [-q, q)
assign mem_dout_sum = ((mem_res_dout_corrected + mem_poly_dout_corrected_sum_corrected_1_buf) >= PARAM_Q) ? (mem_res_dout_corrected + mem_poly_dout_corrected_sum_corrected_1_buf - PARAM_Q) : 
                      ((mem_res_dout_corrected + mem_poly_dout_corrected_sum_corrected_1_buf + PARAM_Q) < 0) ? (mem_res_dout_corrected + mem_poly_dout_corrected_sum_corrected_1_buf + PARAM_Q) :
                      //((mem_res_dout_corrected + mem_poly_dout_corrected_sum_corrected_1_buf) < 0) ? (mem_res_dout_corrected + mem_poly_dout_corrected_sum_corrected_1_buf + PARAM_Q) :
                      (mem_res_dout_corrected + mem_poly_dout_corrected_sum_corrected_1_buf);

always @(posedge clk) 
  begin
      first_round <= start ? 1'b1 :
                     round_done ? 1'b0 :
                     first_round;

      busy <= start ? 1'b1 :
              done ? 1'b0 :
              busy;
      
      mem_pos_rd_addr <= (start | done) ? 1'b0 :
                         round_done ? mem_pos_rd_addr + 1 :
                         mem_pos_rd_addr;
    
      read_counter <= (start | round_done) ? {($clog2(POLY_LEN)){1'b0}} :
                      (read_counter_start | (read_counter > 0)) ? read_counter + 1 :
                      read_counter;

      mem_poly_dout_corrected_sum_buf <= mem_poly_dout_corrected_sum;

      mem_poly_dout_corrected_sum_corrected_0_buf <= mem_poly_dout_corrected_sum_corrected_0;
      mem_poly_dout_corrected_sum_corrected_1_buf <= mem_poly_dout_corrected_sum_corrected_1;
 
      mem_poly_rd_addr_0 <= mem_pos_dout_valid ? POLY_LEN - position_0 :
                            busy ? mem_poly_rd_addr_0 + 1 : 
                            mem_poly_rd_addr_0;
 
      mem_poly_rd_addr_1 <= mem_pos_dout_valid ? POLY_LEN - position_1 :
                            busy ? mem_poly_rd_addr_1 + 1 : 
                            mem_poly_rd_addr_1;
 
      mem_poly_rd_addr_2 <= mem_pos_dout_valid ? POLY_LEN - position_2 :
                            busy ? mem_poly_rd_addr_2 + 1 : 
                            mem_poly_rd_addr_2;
 
      mem_poly_rd_addr_3 <= mem_pos_dout_valid ? POLY_LEN - position_3 :
                            busy ? mem_poly_rd_addr_3 + 1 : 
                            mem_poly_rd_addr_3;
 
      // in range [-q, q)
      mem_poly_dout_corrected_0 <= (sign_0 & (read_counter >= position_0)) | ((sign_0 == 1'b0) & (read_counter < position_0)) ? mem_poly_dout_0 :
                                   $signed({COEFF_WIDTH{1'b0}})-mem_poly_dout_0;
 
      // in range [-q, q)
      mem_poly_dout_corrected_1 <= (sign_1 & (read_counter >= position_1)) | ((sign_1 == 1'b0) & (read_counter < position_1)) ? mem_poly_dout_1 :
                                   $signed({COEFF_WIDTH{1'b0}})-mem_poly_dout_1;
 
      // in range [-q, q)
      mem_poly_dout_corrected_2 <= (sign_2 & (read_counter >= position_2)) | ((sign_2 == 1'b0) & (read_counter < position_2)) ? mem_poly_dout_2 :
                                   $signed({COEFF_WIDTH{1'b0}})-mem_poly_dout_2;
 
      // in range [-q, q)
      mem_poly_dout_corrected_3 <= (sign_3 & (read_counter >= position_3)) | ((sign_3 == 1'b0) & (read_counter < position_3)) ? mem_poly_dout_3 :
                                   $signed({COEFF_WIDTH{1'b0}})-mem_poly_dout_3;
  
      mem_res_rd_addr <= (start | round_done) ? 1'b0 :  
                         (mem_res_rd_en_start | (mem_res_rd_addr > 0)) ?  mem_res_rd_addr + 1 :
                         mem_res_rd_addr;

      mem_res_wren <= (start | round_done) ? 1'b0 :  
                      mem_res_wr_en_start ? 1'b1 :
                      mem_res_wren; 

      mem_res_wr_addr <= (start | round_done) ? {$clog2(POLY_LEN){1'b0}} :
                         mem_res_wren ? mem_res_wr_addr + 1 :
                         mem_res_wr_addr;
      
      mem_res_din <= mem_dout_sum;

      round_done <= busy & (mem_res_wr_addr == (POLY_LEN-2));

      round_counter <= (start | done) ? {($clog2(POS_MEM_DEPTH)){1'b0}} :
                       round_done ? round_counter + 1 :
                       round_counter;
      last_round <= (start | done) ? 1'b0 :
                    (round_done & (round_counter == (POS_MEM_DEPTH-2))) ? 1'b1 :
                    last_round;


      done <= (round_done & (round_counter == (POS_MEM_DEPTH-1))); 
  end
// memories for sotring non-sparse polynomial

  // memory for storing copies of non-sparse polynomial
ram_dual #(.WIDTH(COEFF_WIDTH), .DEPTH(POLY_LEN)) mem_dual_poly_copy_inst_0_1 (
  .clk(clk),
  .data_0(mem_poly_din),
  .data_1({COEFF_WIDTH{1'b0}}),
  .address_0(mem_poly_wren ? mem_poly_wr_addr : mem_poly_rd_addr_0),
  .address_1(mem_poly_rd_addr_1),
  .wren_0(mem_poly_wren),
  .wren_1(1'b0),
  .q_0(mem_poly_dout_0),
  .q_1(mem_poly_dout_1)
); 


  // memory for storing copies of non-sparse polynomial
ram_dual #(.WIDTH(COEFF_WIDTH), .DEPTH(POLY_LEN)) mem_dual_poly_copy_inst_2_3 (
  .clk(clk),
  .data_0(mem_poly_din),
  .data_1({COEFF_WIDTH{1'b0}}),
  .address_0(mem_poly_wren ? mem_poly_wr_addr : mem_poly_rd_addr_2),
  .address_1(mem_poly_rd_addr_3),
  .wren_0(mem_poly_wren),
  .wren_1(1'b0),
  .q_0(mem_poly_dout_2),
  .q_1(mem_poly_dout_3)
); 


  // memory for storing sparse polynomial
ram #(.WIDTH(POS_MEM_WIDTH), .DEPTH(POS_MEM_DEPTH)) mem_pos_inst(
	.clk(clk),
	.data(mem_pos_din),
	.rdaddress(mem_pos_rd_addr),
	.rden(busy),
	.wraddress(mem_pos_wr_addr),
	.wren(mem_pos_wren),
	.q(mem_pos_dout)
);

  // memory for storing temporary poly mul result and final result
    // need to use dual-port since one read and one write are needed simutaneously
ram_dual #(.WIDTH(COEFF_WIDTH), .DEPTH(POLY_LEN)) mem_dual_res_inst (
  .clk(clk),
  .data_0(mem_res_din),
  .data_1({COEFF_WIDTH{1'b0}}),
  .address_0(mem_res_wr_addr),
  .address_1(sw_mem_res_rden ? sw_mem_res_rd_addr : mem_res_rd_addr),
  .wren_0(mem_res_wren),
  .wren_1(1'b0),
  .q_0(),
  .q_1(mem_res_dout)
);

delay #(.WIDTH(1), .DELAY(2)) delay_inst_mem_pos_dout_valid_pre(
  .clk(clk),
  .din(start | round_done),
  .dout(mem_pos_dout_valid_pre)
);

delay #(.WIDTH(1), .DELAY(2)) delay_inst_read_counter_start(
  .clk(clk),
  .din(mem_pos_dout_valid),
  .dout(read_counter_start)
);


delay #(.WIDTH(1), .DELAY(3)) delay_inst_mem_res_rd_en_start(
  .clk(clk),
  .din(read_counter_start),
  .dout(mem_res_rd_en_start)
);

delay #(.WIDTH(1), .DELAY(1)) delay_inst_mem_res_wr_en_start(
  .clk(clk),
  .din(mem_res_rd_en_start),
  .dout(mem_res_wr_en_start)
);
  
endmodule