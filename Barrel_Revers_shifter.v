`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:10:42 02/08/2018 
// Design Name: 
// Module Name:    Barrel_Revers_shifter 
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
module Barrel_Revers_shifter(
     input wire [7:0] a,
     input wire [2:0] amt,
	  input sel,
     output wire [7:0] y

    );
		wire [7:0] r;
		wire [7:0] l;
		
		right_shifter rs (.a(a), .amt(amt), .y(r));
		left_shister_reverse ls (.a(a), .amt(amt), .y(l));
		directional_selctor dirsel(.sel(sel), .a(r), .b(l), .y(y));

endmodule