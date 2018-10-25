`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2018 01:04:36
// Design Name: 
// Module Name: key_translate
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


module key_translate(
    input [15:0] keycode,
    output reg [3:0] rescode
    );
    always @(*)
            begin
                case(keycode)
                16'b0001011000010110: rescode = 4'b0000;  // 1
                16'b0001111000011110: rescode = 4'b0001;  // 2
                16'b0010011000100110: rescode = 4'b0010;  // 3
                16'b0010010100100101: rescode = 4'b0011;  // 4
                16'b0001010100010101: rescode = 4'b0100;  // Q
                16'b0001110100011101: rescode = 4'b0101;  // W
                16'b0010010000100100: rescode = 4'b0110;  // E
                16'b0010110100101101: rescode = 4'b0111;  // R
                16'b0010100100101001: rescode = 4'b1000;  // SPACE
                16'b0101101001011010: rescode = 4'b1001;  // ENTER
                default: rescode = 4'b1010; // "default no pasa nada"
                endcase
            end
endmodule
