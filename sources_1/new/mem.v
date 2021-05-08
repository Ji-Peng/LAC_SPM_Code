
/*
 * Single-ported memory module.
 *
 * Public domain.
 *
 */

module ram
#(
  parameter WIDTH = 8,
  parameter DEPTH = 64
)
(
  input  wire                 clk,
  input  wire [WIDTH-1:0]     data,
  input  wire [$clog2(DEPTH)-1:0] rdaddress,
  input  wire                 rden,
  input  wire [$clog2(DEPTH)-1:0] wraddress,
  input  wire                 wren,
  output reg  [WIDTH-1:0]     q
);

  reg [WIDTH-1:0] mem [0:DEPTH-1];

  always @ (posedge clk)
  begin
    if (wren)
      mem[wraddress] <= data;
  end

  always @ (posedge clk)
  begin
    if (rden)
      q <= mem[rdaddress];
  end

endmodule