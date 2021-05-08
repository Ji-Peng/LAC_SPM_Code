/*
 * This file is a sub module, which buffers signals for some cycles.
 *
 * Copyright (C) 2018
 * Authors: Wen Wang <wen.wang.ww349@yale.edu>
 *          Ruben Niederhagen <ruben@polycephaly.org>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA
 *
*/

module delay
#(
  parameter WIDTH = 1,
  parameter DELAY = 1
)
(
  input  wire clk,
  input  wire [WIDTH-1:0] din,
  output wire [WIDTH-1:0] dout
);


reg [WIDTH-1:0] level_buf [1:DELAY+1];

wire [WIDTH-1:0] level [0:DELAY];

assign level[0] = din;

integer j;
initial
 begin
   for (j = 1; j <= DELAY; j = j + 1)
     level_buf[j] = {WIDTH{1'b0}};
end

genvar i;
generate
  for (i=0; i < DELAY; i=i+1)
    begin : gen_delay
      always @(posedge clk)
       begin
          level_buf[i+1] <= level[i];
        end
       
      assign level[i+1] = level_buf[i+1];
    end
endgenerate

assign dout = level[DELAY];

endmodule

