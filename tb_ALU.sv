
module tb_ALU;

	logic [31:0] A,B;
	logic [1:0] ALU_control;
	logic [31:0] result;

	ALU alu(.A(A),.B(B), .ALU_control(ALU_control),.result(result));
	initial begin
	
	A = 32'd2;
	B = 32'd3;
	
	ALU_control = 2'b00;
	#10
	ALU_control = 2'b01;
	#10
	ALU_control = 2'b10;
	#10
	ALU_control = 2'b11;
	#10
	
	A = 32'd5;
	B = 32'd4;
	
	ALU_control = 2'b00;
	#10
	ALU_control = 2'b01;
	#10
	ALU_control = 2'b10;
	#10
	ALU_control = 2'b11;
	#10
		
	$stop;	
end	
endmodule