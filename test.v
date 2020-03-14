`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:19:18 02/03/2020
// Design Name:   parking
// Module Name:   C:/acads/parrking/test.v
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

module test;

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

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		clk = 0;
      reset=0;
		#10;
		reset=1;
		#10;
		reset=0;
		repeat(54)
		begin
	  #20;
		a=1;
      #10;
      b=1;
      #10;
       a=0;
		#10;
		b=0;
		
		#50;
		a=1;
      #10;
      b=1;
      #10;
      a=0;
   	#10;
		b=0;
		
		end
		// Add stimulus here

	end

  always
      #5 clk = ~clk;

      
endmodule

