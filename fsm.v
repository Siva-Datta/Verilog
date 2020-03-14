`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:03 02/03/2020 
// Design Name: 
// Module Name:    fsm 
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
module fsm(input a,
           input b,
			  input clk,
			  input reset,
			  output reg enter,
			  output reg exit
    );
	 
	 
	 reg [2:0] state_1;
	 reg [2:0] state_2;
	 parameter [2:0]A = 3'b000; 
	 parameter [2:0]B = 3'b010;
	 parameter [2:0]C = 3'b011;
    parameter [2:0]D = 3'b001;
    parameter [2:0]E = 3'b101;
    parameter [2:0]F = 3'b111;
	 parameter [2:0]G = 3'b110;
	 
	 always@(a,b,state_1)
	  case(state_1)
	    A: 
		    if({a,b}==2'b00)begin
			    state_2=A;
				 enter=0;
				 exit=0;
				end 
          else if({a,b}==2'b10)begin
			    state_2=B;
				 enter=0;
				 exit=0;
				end  
          else if({a,b}==2'b01)begin
			    state_2=E;
				 enter=0;
				 exit=0;
				end  
			 else if({a,b}==2'b11)begin
			    state_2=A;
				 enter=0;
				 exit=0;
				end  	

       B: 
          if({a,b}==2'b11)begin
			    state_2=C;
				 enter=0;
				 exit=0;
				end  
			  else begin
			    state_2=A;
				 enter=0;
				 exit=0;
				end  	  

       C:        
          if({a,b}==2'b01)begin
			    state_2=D;
				 enter=0;
				 exit=0;
				end  
			  else begin
			    state_2=A;
				 enter=0;
				 exit=0;
				end  	  

       D:
		    if({a,b}==2'b00)begin
			    state_2=A;
				 enter=1;
				 exit=0;
				end 
           else begin
			    state_2=A;
				 enter=0;
				 exit=0;
				end  
         
       E:
           if({a,b}==2'b11)begin
			    state_2=F;
				 enter=0;
				 exit=0;
				end 
           else begin
			    state_2=A;
				 enter=0;
				 exit=0;
				end            
       F:
          if({a,b}==2'b10)begin
			    state_2=G;
				 enter=0;
				 exit=0;
				end 
           else begin
			    state_2=A;
				 enter=0;
				 exit=0;
				end  	
       G:
          if({a,b}==2'b00)begin
			    state_2=A;
				 enter=0;
				 exit=1;
				end 
          else begin
			    state_2=A;
				 enter=0;
				 exit=0;
				end  	    
       endcase  

     always@(posedge clk or posedge reset )
	  if(reset)begin
	    state_1= A;
		 //enter=0;
		 //exit=0;
		 end
	  else	 
	    state_1 = state_2;
	
endmodule

