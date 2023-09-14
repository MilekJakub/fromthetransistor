`timescale 1ns/100ps

module full_adder(
  output s,
  output c_out,
  input  a,
  input  b,
  input  c_in);
  
  wire s1, s2, c_out1, c_out2;
  
  half_adder ha0(s1, c_out1, a, b);
  half_adder ha1(s2, c_out2, s1, c_in);
  or(c_out, c_out1, c_out2);
  assign s = s2;
  
endmodule
