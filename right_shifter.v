`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:44:52 02/07/2018 
// Design Name: 
// Module Name:    right_shifter 
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
module right_shifter(
     input wire [7:0] a,
     input wire [2:0] amt,
     output reg [7:0] y
    );
		//integer amount;
		//always@(amt)
		//assign amount = amt;
   // body
 always @*
			//if(amount==0) 
			//y = a;
			//else if (amount==1)
			//y = {a[0], a[7:1]};
			//else if (amount==7)
			//y = {a[6:0], a[7]};
			//else
			//y = {a[(amount):0], a[7:(amount)]};
 
  
      case(amt) 
         3'b000: y = a;
         3'b001: y = {a[0], a[7:1]};
         3'b010: y = {a[1:0], a[7:2]};
         3'b011: y = {a[2:0], a[7:3]};
         3'b100: y = {a[3:0], a[7:4]};
         3'b101: y = {a[4:0], a[7:5]};
         3'b110: y = {a[5:0], a[7:6]};
			3'b111: y = {a[6:0], a[7]};
      endcase

endmodule 