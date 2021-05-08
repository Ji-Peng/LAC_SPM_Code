module ram_dual
       #(
         parameter WIDTH = 8,
         parameter DEPTH = 64
       )
       (
         input  wire                 clk,
         input  wire [WIDTH-1:0]     data_0,
         input  wire [WIDTH-1:0]     data_1,
         input  wire [$clog2(DEPTH)-1:0] address_0,
         input  wire [$clog2(DEPTH)-1:0] address_1,
         input  wire                 wren_0,
         input  wire                 wren_1,
         output reg  [WIDTH-1:0]     q_0,
         output reg  [WIDTH-1:0]     q_1
       );

reg [WIDTH-1:0] mem [0:DEPTH-1];

always @ (posedge clk)
  begin
    if (wren_0)
      begin
        mem[address_0] <= data_0;
        q_0 <= data_0;
      end
    else
      q_0 <= mem[address_0];
  end

always @ (posedge clk)
  begin
    if (wren_1)
      begin
        mem[address_1] <= data_1;
        q_1 <= data_1;
      end
    else
      q_1 <= mem[address_1];
  end

endmodule
