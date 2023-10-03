module OR_GATE (
	input a,
	input b,
	input sel,
	output out);

	wire not_sel, and_a_out, and_b_out;

	not(not_sel, sel);

	and(and_a_out, a, not_sel);
	and(and_b_out, b, sel);

	or(out, and_a_out, and_b_out);
	
endmodule
