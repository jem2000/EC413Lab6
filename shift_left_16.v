`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2020 12:17:33 AM
// Design Name: 
// Module Name: shift_left_16
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module shift_left_16(in,out
); 
parameter size = 32;

input [size-1:0] in;
output [size-1:0] out;

assign out = {in[size-17:0],16'b00000000_00000000}; //change 

endmodule
