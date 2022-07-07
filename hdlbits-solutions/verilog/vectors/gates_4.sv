module top_module(
  input [3:0] in,
  output out_and,
  output out_or,
  output out_xor,
)
// 归并操作
  assign out_and = &in;
  assign out_or = |in;
  assign out_xor = ^in;

  // assign out_and = in[0] & in[1] & in[2];
endmodule
