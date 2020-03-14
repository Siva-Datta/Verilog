`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:35 02/03/2020 
// Design Name: 
// Module Name:    parking 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module parking(input a,
               input b,
					input clk,
					input reset,
					output reg [7:0]count			
    );
	 wire enter;
	 wire exit;
	 wire [7:0]k;
	 
	 fsm f1(a,b,clk,reset,enter,exit);
	counter c1(enter,exit,clk,count,k);
  
    always@(enter or exit or  reset )
	     if(reset)
		    count=0;
		  else 
		     count=k;
 
endmodule