`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: PUC
// Engineer: Henry Blair Gonzalez
// 
// Create Date: 30.08.2018 19:00:34
// Design Name: memory counter (counter 1)
// Module Name: count_1
// Project Name: Digital Signal Generator
// Target Devices: Basys 3
// Tool Versions: 
// Description: counter to access memory directions for the samples of the signals in memory
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: *CONVENCION DE ARREGLOS: [LARGO - 1:0]*
// 
//////////////////////////////////////////////////////////////////////////////////


module count_1(
    input wire clk_in,
    input reset,
    output reg [7:0] count_out
    );
    always @(posedge clk_in)
        begin
        case(reset)
        1'b1: count_out = 8'b00000000;
        1'b0: count_out = count_out + 1 ;
        endcase
        end

endmodule
