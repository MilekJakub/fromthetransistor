module OR_GATE (
	input a,
	input b,
	output out);

	wire not_a, not_b, nand_a_out, nand_b_out, nand_c_out, nand_x_out, nand_y_out;

	not(not_a, a);
	not(not_b, b);

	nand(nand_a_out, not_a, b);
	nand(nand_b_out, a, b);
	nand(nand_c_out, a, not_b);

	and(nand_x_out, nand_a_out, nand_b_out);
	and(nand_y_out, nand_c_out, nand_b_out);

	nand(out, nand_x_out, nand_y_out);
	
endmodule
