module EJERCICIO4();

  reg A21, B21, C21, A41, B41, C41, A81, B81, C81, A22, B22, C22, A42, B42, C42, A82, B82, C82;
  wire T1M2, T1M4, T1M8, T2M2, T2M4, T2M8;

	T1M2_1 T12(A21, B21, C21, T1M2);
	T1M4_1 T14(A41, B41, C41, T1M4);
	T1M8_1 T18(A81, B81, C81, T1M8);
	T2M2_1 T22(A22, B22, C22, T2M2);
	T2M4_1 T24(A42, B42, C42, T2M4);
	T2M8_1 T28(A82, B82, C82, T2M8);

  initial begin
	#5
	$display("T1 con MUX2:1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A21, B21, C21, T1M2);
       A21 = 0; B21 = 0; C21 = 0;
    #1 A21 = 0; B21 = 0; C21 = 1;
    #1 A21 = 0; B21 = 1; C21 = 0;
    #1 A21 = 0; B21	= 1; C21 = 1;
    #1 A21 = 1; B21 = 0; C21 = 0;
    #1 A21 = 1; B21 = 0; C21 = 1;
    #1 A21 = 1; B21 = 1; C21 = 0;
    #1 A21 = 1; B21 = 1; C21 = 1;
  end
  
  
  initial begin
	#15
    $display("\n");
	$display("T1 con MUX4:1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A41, B41, C41, T1M4);
       A41 = 0; B41 = 0; C41 = 0;
    #1 A41 = 0; B41 = 0; C41 = 1;
    #1 A41 = 0; B41 = 1; C41 = 0;
    #1 A41 = 0; B41	= 1; C41 = 1;
    #1 A41 = 1; B41 = 0; C41 = 0;
    #1 A41 = 1; B41 = 0; C41 = 1;
    #1 A41 = 1; B41 = 1; C41 = 0;
    #1 A41 = 1; B41 = 1; C41 = 1;
  end
  
//T1 MUX 8:1
  initial begin
	#25
    $display("\n");
	$display("T1 con MUX 8:1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A81, B81, C81, T1M8);
       A81 = 0; B81 = 0; C81 = 0;
    #1 A81 = 0; B81 = 0; C81 = 1;
    #1 A81 = 0; B81 = 1; C81 = 0;
    #1 A81 = 0; B81	= 1; C81 = 1;
    #1 A81 = 1; B81 = 0; C81 = 0;
    #1 A81 = 1; B81 = 0; C81 = 1;
    #1 A81 = 1; B81 = 1; C81 = 0;
    #1 A81 = 1; B81 = 1; C81 = 1;
  end
  

  initial begin
	#30
    $display("\n");
	$display("T2 con MUX2:1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A22, B22, C22, T2M2);
       A22 = 0; B22 = 0; C22 = 0;
    #1 A22 = 0; B22 = 0; C22 = 1;
    #1 A22 = 0; B22 = 1; C22 = 0;
    #1 A22 = 0; B22	= 1; C22 = 1;
    #1 A22 = 1; B22 = 0; C22 = 0;
    #1 A22 = 1; B22 = 0; C22 = 1;
    #1 A22 = 1; B22 = 1; C22 = 0;
    #1 A22 = 1; B22 = 1; C22 = 1;
  end
  
  
  initial begin
	#40
    $display("\n");
	$display("T2 con MUX4:1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A42, B42, C42, T2M4);
       A42 = 0; B42 = 0; C42 = 0;
    #1 A42 = 0; B42 = 0; C42 = 1;
    #1 A42 = 0; B42 = 1; C42 = 0;
    #1 A42 = 0; B42	= 1; C42 = 1;
    #1 A42 = 1; B42 = 0; C42 = 0;
    #1 A42 = 1; B42 = 0; C42 = 1;
    #1 A42 = 1; B42 = 1; C42 = 0;
    #1 A42 = 1; B42 = 1; C42 = 1;
  end
  
  
//Tabla 2 MUX 8:1
  initial begin
	#50
    $display("\n");
	$display("T2 con MUX8:1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A82, B82, C82, T2M8);
       A82 = 0; B82 = 0; C82 = 0;
    #1 A82 = 0; B82 = 0; C82 = 1;
    #1 A82 = 0; B82 = 1; C82 = 0;
    #1 A82 = 0; B82	= 1; C82 = 1;
    #1 A82 = 1; B82 = 0; C82 = 0;
    #1 A82 = 1; B82 = 0; C82 = 1;
    #1 A82 = 1; B82 = 1; C82 = 0;
    #1 A82 = 1; B82 = 1; C82 = 1;
  end
  
  
  initial
    #65 $finish;

  initial begin
    $dumpfile("Ejercicio4_tb.vcd");
    $dumpvars(0, EJERCICIO4);
  end
  
endmodule