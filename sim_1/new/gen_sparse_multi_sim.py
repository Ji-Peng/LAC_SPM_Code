import sys

import argparse

import math

parser = argparse.ArgumentParser(description='Generate sparse polynomial multiplication module of LAC scheme.',
                formatter_class=argparse.ArgumentDefaultsHelpFormatter)
 
parser.add_argument('-ps', dest='parallel_size', type=int, default=10,
          help='how many multiplications are being performed in parallel')

parser.add_argument('-q', dest='modulo', type=int, default=251,
          help='modulo of the LAC scheme')

parser.add_argument('-n', dest='polynomial_length', type=int, default=512,
          help='the length of polynomial of LAC scheme')
 
parser.add_argument('-cw', dest='coeff_width', type=int, default=8,
          help='the width of normal polynomial coefficient')

parser.add_argument('-sw', dest='sparse_width', type=int, default=2,
          help='the width of sparse polynomial coefficient')

args = parser.parse_args()
 
ps = args.parallel_size
q = args.modulo
n = args.polynomial_length
cw = args.coeff_width
sw = args.sparse_width

print("""`timescale 1ns / 1ps
`define INDEX(i) ((i + 1) * P_COEFF_WIDTH - 1)- : P_COEFF_WIDTH
`define INDEX2(i) ((i + 1) * P_SPARSE_WIDTH - 1)- : P_SPARSE_WIDTH

module new_design_sim
#(
    parameter P_Q = {q},
    parameter P_N = {n},
    parameter P_COEFF_WIDTH = {cw},
    parameter P_SPARSE_WIDTH = {sw}
)();

reg [P_N * P_COEFF_WIDTH - 1 : 0] poly_a;
reg [P_N * P_SPARSE_WIDTH - 1 : 0] poly_r;
wire [P_N * P_COEFF_WIDTH - 1 : 0] poly_result;
""".format(q=q,n=n,cw=cw,sw=sw))

print("""
new_design_prototype test(
    .i_poly_a(poly_a),
    .i_poly_r(poly_r),
    .o_result(poly_result)
    );
""")
print("""
initial
begin""")

for i in range(ps):
    print("""
    poly_a[`INDEX({index})] = 1'b1;
    poly_r[`INDEX2({index})] = 2'b11;""".format(index=i))

print('# 1000')

for i in range(ps):
    print("""
    poly_a[`INDEX({index})] = 1'b1;
    poly_r[`INDEX2({index})] = 2'b10;""".format(index=i))

print('# 1000')

for i in range(ps):
    print("""
    poly_a[`INDEX({index})] = 1'b1;
    poly_r[`INDEX2({index})] = 2'b01;""".format(index=i))

print('end')
print("""endmodule""")