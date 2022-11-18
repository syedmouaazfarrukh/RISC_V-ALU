

module ALU(input logic [31:0] A,B, 
		   input logic [1:0] ALU_control, 
		   output logic [31:0] result);

	logic [31:0] adder_b;

	
	always_comb begin
	
		case(ALU_control)
			2'b10: result = A & B;
			2'b11: result = A | B;
		endcase
	
		if (ALU_control[1]==0) begin
			if (ALU_control[0]) begin
				adder_b = ~B;
			end else begin
				adder_b = B;
		end
		result = A + adder_b + ALU_control[0];
	end


end
endmodule

