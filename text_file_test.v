`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:34:21 02/03/2020
// Design Name:   parking
// Module Name:   C:/acads/parrking/text_file_test.v
// Project Name:  parrking
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: parking
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module text_file_test;

	// Inputs
	reg a;
	reg b;
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] count;

	// Instantiate the Unit Under Test (UUT)
	parking uut (
		.a(a), 
		.b(b), 
		.clk(clk), 
		.reset(reset), 
		.count(count)
	);
	
	reg [1:0]memv[9:0];
	integer j;
	always
     #2 clk =  ! clk;
	
	initial begin
	$readmemb ("inputs.txt",memv);
	a = 0;
	b = 0;
	clk = 0;
	reset = 1;
	#10	
	for (j=0;j<=9;j=j+1)
	begin
	{a,b} = memv[j];
	#4;
	end
        
		
	end
      
endmodule

