`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2024 00:08:08
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
    input a,
    input b,
    input ci,
    output s,
    output co
    );
    
     assign s = a ^ b ^ ci;
    assign co = (a&b)|(a&ci)|(b&ci);
    
endmodule
