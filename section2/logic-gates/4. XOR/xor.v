module XOR_GATE (
	input  a,
	input  b,
	output out);
	
	wire not_a, not_b, nand_a_out, nand_b_out;

	not(not_a, a);
	not(not_b, b);

	nand(nand_a_out, not_a, b);
	nand(nand_b_out, a, not_b);

	nand(out, nand_a_out, nand_b_out);

endmodule
