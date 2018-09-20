`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2018 03:38:34 AM
// Design Name: 
// Module Name: display_split
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


module display_split(
    input [3:0] count_1,
    input [3:0] count_2,
    output reg [15:0] seg_number
    );
    
reg [15:0] multiplied;

always @(*)
begin
    multiplied = count_1*100;
    seg_number = multiplied + count_2;
end
endmodule
