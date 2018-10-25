`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2018 03:49:45 AM
// Design Name: 
// Module Name: module_timer
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


module module_timer(
    input clk,
    input trigger,
    output reg [15:0] counter
    );
    
    always@(negedge clk)begin
        counter = trigger? counter :counter +1;
    end
endmodule
