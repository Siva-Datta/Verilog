`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:25:45 01/20/2020 
// Design Name: 
// Module Name:    Fulladder 
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
module Fulladder(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
	 
	 assign s = a^b^cin;
	 assign cout = (a&b) | (b&cin) | (a&cin);


endmodule