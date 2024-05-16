`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 23:05:07
// Design Name: 
// Module Name: tb
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


module tb_multiplier_4x4;

  // Inputs
  reg [3:0] A,B;
  
  // Outputs
  wire [7:0] P;

  // Instantiate the 4x4 multiplier module
  Multiplier4x4 dut (
    .A(A),
    .B(B),
    .P(P)
  );

  // Clock generation
  reg clk;
  always #5 clk = ~clk;

  // Test stimulus
  initial begin
    // Initialize inputs
    A = 4'b1001;
    B = 4'b0101;

    // Apply inputs and evaluate results
    repeat (16) begin
      #10; // Wait for combinational logic to settle
      $display("Multiplying %b by %b: Result = %b", a, b, result);
      A = A + 1; // Increment input for the next test
    end

    $stop; // Stop simulation
  end

endmodule
