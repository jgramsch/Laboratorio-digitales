`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2018 04:42:35 AM
// Design Name: 
// Module Name: clk_counter
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


module clk_counter(
    input clk,
    output reg [15:0] number
    );
    reg [20:0] counter;
    always@(posedge clk)begin
    counter = counter + 1;
    number = counter == 0 ? number +1:number;
    end
endmodule
