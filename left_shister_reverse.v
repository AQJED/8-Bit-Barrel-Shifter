`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:57:01 02/08/2018 
// Design Name: 
// Module Name:    left_shister_reverse 
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
module left_shister_reverse(
	  input wire [0:7] a,
     input wire [2:0] amt,
     output  reg [0:7] y
    );
	
		wire [7:0] ra;
      assign ra = {a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7]}; // can be done with a loop
		//assign amount = 4'b1000-amt;
   // body
 always @*
      case(amt)
         3'b000: y = ra;
         3'b001: y = {ra[0], ra[7:1]};
         3'b010: y = {ra[1:0], ra[7:2]};
         3'b011: y = {ra[2:0], ra[7:3]};
         3'b100: y = {ra[3:0], ra[7:4]}; 
         3'b101: y = {ra[4:0], ra[7:5]};
         3'b110: y = {ra[5:0], ra[7:6]};
			3'b111: y = {ra[6:0], ra[7]};
      endcase
endmodule 