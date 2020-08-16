//PAblo Muñoz Codigo ejercicio 4 
module MUX2(input logic D0, D1, S0, output wire Y);
	
	assign Y = S0 ? D1 : D0;
	
endmodule

module MUX4(input logic D0, D1, D2, D3, S0, S1, output wire Y);
	
	wire OUT1, OUT2;
	MUX2 G1(D0, D1, S1, OUT1);
	MUX2 G2(OUT1, OUT2 , S0, Y);
	MUX2 G3(D2, D3, S1, OUT2);
	
endmodule

module MUX8(input logic D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2, output wire Y);

	wire OUT1, OUT2;
	MUX4 F1(D0, D1, D2, D3, S2, S1, OUT1);
	MUX4 F2(D4, D5, D6, D7, S2, S1, OUT2);
	MUX2 F3(OUT1, OUT2, S0, Y);
	
endmodule

module T1M2(input wire A, B, C, output wire Y);
	
	MUX2 P1(B^C,B~^C, A, Y);
	
endmodule


module T1M4(input wire A, B, C, output wire Y);

	MUX4 P2(C, ~C, ~C, C, A, B, Y);
	
endmodule

module T1M8(input wire A, B, C, output wire Y);

	wire ENT, SAL;
	assign ENT = 1;
	assign SAL = 0;
	MUX8 P3(SAL, ENT, ENT, SAL, ENT, SAL, SAL, ENT, A, B, C, Y);
	
endmodule


module T2M2(input wire A, B, C, output wire Y);
	
	MUX2 Q1(~(B|C), ~(B&C), A, Y);
	
endmodule


module T2M4(input wire A, B, C, output wire Y);

	MUX4 Q2(~C, ~C&C, ~C|C, ~C, A, B, Y);
	
endmodule


module T2M8(input wire A, B, C, output wire Y);

	wire ENT, SAL;
	assign ENT = 1;
	assign SAL = 0;
	MUX8 Q3(ENT, SAL, SAL, SAL, ENT, ENT, ENT, SAL, A, B, C, Y);
	
endmodule