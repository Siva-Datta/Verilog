`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:24:52 01/20/2020 
// Design Name: 
// Module Name:    Halfadder 
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
module Halfadder(
    input a,
    input b,
    output s,
    output cout
    );
	assign s = a^b;
	assign cout = a&b;

endmodule