module half_adder(
  output s,
  output c_out,
  input  a, 
  input  b);
  
  xor(s, a, b);
  and(c_out, a, b);
  
endmodule