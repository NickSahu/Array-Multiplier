`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2024 23:58:11
// Design Name: 
// Module Name: Multiplier4x4
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


module Multiplier4x4(
    input [3:0] A,
    input [3:0] B,
    output [7:0] P
    );
 wire [10:0]C;
 wire [5:0]S;
 wire [15:1]G;
 
 and a00 (P[0],A[0],B[0]);
 and a01 (G[1],A[1],B[0]);
 and a02 (G[2],A[2],B[0]);
 and a03 (G[3],A[3],B[0]);
 and a04 (G[4],A[0],B[1]);
 and a05 (G[5],A[1],B[1]);
 and a06 (G[6],A[2],B[1]);
 and a07 (G[7],A[3],B[1]);
 and a08 (G[8],A[0],B[2]);
 and a09 (G[9],A[1],B[2]);
 and a10 (G[10],A[2],B[2]);
 and a11 (G[11],A[3],B[2]);
 and a12 (G[12],A[0],B[3]);
 and a13 (G[13],A[1],B[3]);
 and a14 (G[14],A[2],B[3]);
 and a15 (G[15],A[3],B[3]);
 
 HalfAdder HA0 (G[1],G[4],P[1],C[0]);
 HalfAdder HA1 (G[7],C[2],S[2],C[3]);
 HalfAdder HA2 (G[8],S[0],P[2],C[4]);
 HalfAdder HA3 (G[12],S[3],P[3],C[8]);
 
 FullAdder FA0(G[2],G[5],C[0],S[0],C[1]);
 FullAdder FA1(G[3],G[6],C[1],S[1],C[2]);
 FullAdder FA2(G[9],S[1],C[4],S[3],C[5]);
 FullAdder FA3(G[10],S[2],C[5],S[4],C[6]);
 FullAdder FA4(G[11],C[3],C[6],S[5],C[7]);
 FullAdder FA5(G[13],S[4],C[8],P[4],C[9]);
 FullAdder FA6(G[14],S[5],C[9],P[5],C[10]);
 FullAdder FA7(G[15],C[7],C[10],P[6],P[7]);
 
endmodule
