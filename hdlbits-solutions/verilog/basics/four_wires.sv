
// input a is equal to input wire a
module top_module(
  input a, b, c,
  output w, x, y, z,
);
  assign w = a;
  assign x = b;
  assign y = b;
  assign z = c;
endmodule
