// declare mid wires in the body
module top_module (
  input a, b, c, d,
  output out, out_n,
);
  wire x, y;
  assign x = a&b;
  assign y = c&d;
  assign out = x|y;
  assign out_n = ~out;

endmodule
