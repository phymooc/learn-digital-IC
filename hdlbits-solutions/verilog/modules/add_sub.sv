module top_module (
  input [31:0] a,
  input [31:0] b,
  input sub,
  output [31:0] sum,
)
  wire [31:0] b_inv, cout;
  assign b_inv = sub ? ~b : b;
  add16 add16_lo(a[15:0], b_inv[15:0], sub, sum[15:0], cout);
  add16 add16_hi(a[31:16], b_inv[31:16], cout, sum[31:16]);
endmodule
