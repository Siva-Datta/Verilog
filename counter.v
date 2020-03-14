`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:37 02/03/2020 
// Design Name: 
// Module Name:    counter 
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
module counter(input inc,
               input dec,
					input clk,
					input [7:0]precount,
					output reg [7:0]count
    );
	 
	 always@(posedge clk)begin
	  if(inc) begin
	    if(precount<54) count=precount+8'd1;
		 //count=precount+8'd1;
		 end
	  else if(dec)
       count=precount-8'd1;
     else
       count=precount;	  
    end

endmodule
