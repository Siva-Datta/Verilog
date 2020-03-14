`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:21:26 02/03/2020
// Design Name:   parking
// Module Name:   C:/acads/parrking/test_text.v
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

module test_text;

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

integer data_file ; // file handler
integer scan_file ; // file handler
integer data_file_b ; // file handler
integer scan_file_b ; // file handler

reg captured_a;
reg captured_b;
`define NULL 0



initial begin
   data_file = $fopen("input.txt", "r");
	data_file_b = $fopen("input_b.txt", "r");
	
	a =0 ; 
	b=0;
	reset = 1 ;
   clk =0;
	
//	#0.1;
	//reset = 0 ;
	
	
     if (data_file == `NULL) begin
     $display("data_file handle was NULL");
     $finish;
     end
	  if (data_file_b == `NULL) begin
     $display("data_file_b handle was NULL");
     $finish;
     end
	
end


always @(posedge clk) begin
  
     scan_file = $fscanf(data_file, "%d\n", captured_a);
      if (!$feof(data_file)) begin
      a =captured_a;	
      end
		scan_file_b = $fscanf(data_file_b, "%d\n", captured_b);
      if (!$feof(data_file_b)) begin
      b =captured_b;	
      end
end
	
	always

     #2 clk =  ! clk;
      
      
endmodule

