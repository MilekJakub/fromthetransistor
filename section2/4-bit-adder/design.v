module four_bit_adder(
  output overflow,
  output [4:0] result,
  input  [3:0] a,
  input  [3:0] b);
  
  wire c_out1, c_out2, c_out3;
  
  half_adder ha0(result[0], c_out1,   a[0], b[0]);
  full_adder fa0(result[1], c_out2,   a[1], b[1], c_out1);
  full_adder fa1(result[2], c_out3,   a[2], b[2], c_out2);
  full_adder fa2(result[3], overflow, a[3], b[3], c_out3);
  assign result[4] = overflow;
  
endmodule
