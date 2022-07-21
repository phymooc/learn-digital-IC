module top_module(
  input [31:0] a,
  input [31:0] b,
  output [31:0] sum,
)
  wire [15:0] sum_lo, sum_hi;
  wire cin;
  add16 add16_lo(a[15:0], b[15:0], 0, sum_lo, cin);
  add16 add16_hi(a[31:16], b[31:16], cin, sum_hi, );

  assign sum = {sum_hi, sum_lo};
endmodule
