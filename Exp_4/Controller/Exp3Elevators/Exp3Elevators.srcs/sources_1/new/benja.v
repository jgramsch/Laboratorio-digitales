`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 04:15:10 PM
// Design Name: 
// Module Name: benja
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


module benja(
    input clk,
    input [7:0] in,
    output reg signal
    );
  always@(posedge clk) begin
    case(in)
    8'b0001000011: signal = 1'b0;
  8'b0001001011: signal = 1'b0;
  8'b0001001001: signal = 1'b0;
  8'b0001010011: signal = 1'b0;
  8'b0001010001: signal = 1'b0;
  8'b0001011011: signal = 1'b0;
  8'b0101001011: signal = 1'b0;
  8'b0101001101: signal = 1'b0;
  8'b0101000011: signal = 1'b1;
  8'b0101000101: signal = 1'b1;
  8'b0101001001: signal = 1'b0;
  8'b0101010011: signal = 1'b0;
  8'b0101010101: signal = 1'b0;
  8'b1001010011: signal = 1'b0;
  8'b1001010101: signal = 1'b0;
  8'b1001001011: signal = 1'b1;
  8'b1001001101: signal = 1'b1;
  8'b1001001001: signal = 1'b1;
  8'b1001000011: signal = 1'b1;
  8'b1001000101: signal = 1'b1;
  8'b1101011011: signal = 1'b0;
  8'b1101011101: signal = 1'b0;
  8'b1101010011: signal = 1'b1;
  8'b1101010101: signal = 1'b1;
  8'b1101010001: signal = 1'b1;
  8'b1101001011: signal = 1'b1;
  8'b1101001101: signal = 1'b1;
  8'b1101001001: signal = 1'b1;
  8'b1101000011: signal = 1'b1;
  8'b0110001011: signal = 1'b0;
  8'b0110001101: signal = 1'b0;
  8'b0110000011: signal = 1'b1;
  8'b0110000101: signal = 1'b1;
  8'b0110001001: signal = 1'b0;
  8'b0110010011: signal = 1'b0;
  8'b0110010101: signal = 1'b0;
  8'b1010010011: signal = 1'b1;
  8'b1010010101: signal = 1'b1;
  8'b1010001011: signal = 1'b1;
  8'b1010001101: signal = 1'b1;
  8'b1010001001: signal = 1'b1;
  8'b1010000011: signal = 1'b1;
  8'b1010000101: signal = 1'b1;
  8'b1110011011: signal = 1'b1;
  8'b1110011101: signal = 1'b1;
  8'b1110010011: signal = 1'b1;
  8'b1110010101: signal = 1'b1;
  8'b1110010001: signal = 1'b1;
  8'b1110001011: signal = 1'b1;
  8'b1110001101: signal = 1'b1;
  8'b1110001001: signal = 1'b1;
  8'b1110000011: signal = 1'b1;
  8'b0101010001: signal = 1'b0;
  8'b0101011011: signal = 1'b0;
  8'b0001001101: signal = 1'b0;
  8'b0001000101: signal = 1'b0;
  8'b0001010101: signal = 1'b0;
  8'b1001011011: signal = 1'b0;
  8'b1001011101: signal = 1'b0;
  8'b1001010001: signal = 1'b0;
  8'b0100000011: signal = 1'b1;
  8'b0100001011: signal = 1'b0;
  8'b0100001001: signal = 1'b0;
  8'b0100010011: signal = 1'b0;
  8'b0100010001: signal = 1'b0;
  8'b0100011011: signal = 1'b0;
  8'b1010011011: signal = 1'b1;
  8'b1010011101: signal = 1'b1;
  8'b1010010001: signal = 1'b1;
  8'b0100010101: signal = 1'b0;
  8'b0100001101: signal = 1'b0;
  8'b0100000101: signal = 1'b1;
  8'b1000011011: signal = 1'b1;
  8'b1000011101: signal = 1'b1;
  8'b1000010011: signal = 1'b1;
  8'b1000010101: signal = 1'b1;
  8'b1000010001: signal = 1'b1;
  8'b1000001011: signal = 1'b1;
  8'b1000001101: signal = 1'b1;
  8'b1000001001: signal = 1'b1;
  8'b1000000011: signal = 1'b1;
  8'b0010001011: signal = 1'b1;
  8'b0010001101: signal = 1'b1;
  8'b0010000011: signal = 1'b1;
  8'b0010000101: signal = 1'b1;
  8'b0010001001: signal = 1'b1;
  8'b0010010011: signal = 1'b1;
  8'b0010010101: signal = 1'b1;
  8'b0101011101: signal = 1'b0;
  8'b0110011011: signal = 1'b0;
  8'b0110011101: signal = 1'b0;
  8'b0110010001: signal = 1'b0;
  8'b0100011101: signal = 1'b0;
  8'b0001011101: signal = 1'b0;
  endcase
  end
endmodule
