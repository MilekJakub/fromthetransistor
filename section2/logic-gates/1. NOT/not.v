module NOT_GATE(
  input  in,
  output out);
  
  nand(out, in, in);
  
endmodule