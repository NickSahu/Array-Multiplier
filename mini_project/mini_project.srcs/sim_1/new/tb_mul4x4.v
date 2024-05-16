`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2024 16:07:57
// Design Name: 
// Module Name: tb_mul4x4
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


module tb_mul4x4();

reg [3:0] a,b;
wire [7:0] p;

Multiplier4x4 dut (A,B,P);

initial begin
#10     a=0;    b=0;
#100    a=4'b1101;  b=4'b0101;
#100    a=4'b1000;  b=4'b0100;
#100    a=4'b1011;  b=4'b0110;
#10     $finish;
end
endmodule
