module top_module (
  input [31:0] a,
  input [31:0] b,
  output [31:0] sum,
);
  wire [15:0] sum_lo, sum_hi1, sum_hi2;
  wire cout_lo;
  add16 add16_lo(a[15:0], b[15:0], 0, sum_lo, cout_lo);
  add16 add16_hi1(a[31:16], b[31:16], 0, sum_hi1, );
  add16 add16_hi2(a[31:16], b[31:16], 1, sum_hi2, );

  always @(*) begin
    case (cout_lo)
      0: sum = {sum_hi1, sum_lo};
      1: sum = {sum_hi2, sum_lo};
  endcase
  end

endmodule
