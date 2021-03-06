`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:13:44 02/09/2020
// Design Name:   float_adder
// Module Name:   F:/VLSI lab/Adder/adder_test.v
// Project Name:  Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: float_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_test;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire [31:0] Out;
	wire [24:0] Out_test;
	wire [7:0] shift;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	float_adder uut (
		.a(a), 
		.b(b), 
		.Out(Out), 
		.Out_test(Out_test), 
		.shift(shift), 
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		
		#100;
      a = 32'b10111111100000000000000000000000;
		b = 32'b11000000011000000000000000000000;
		
		#100;
		a = 32'h3f800000;
		b= 32'h40400000;
		#100;
        
		// Add stimulus here

	end
      
endmodule

