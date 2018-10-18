`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 12:34:36 PM
// Design Name: 
// Module Name: debug_counter
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


module debug_counter(
    input sclk,
    output reg [6:0] number
    );
    always@(posedge sclk) begin
    number = number+1;
    end
endmodule
