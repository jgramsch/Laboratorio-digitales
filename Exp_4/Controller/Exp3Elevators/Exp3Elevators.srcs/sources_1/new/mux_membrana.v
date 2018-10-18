`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 03:37:56 PM
// Design Name: 
// Module Name: mux_membrana
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


module mux_membrana(
    input clk,
    input asn,
    input w,
    input in,
    input [1:0] addr,
    output reg w_out1,
    output reg in_out1,
    output reg [1:0] addr_out1,
    output reg w_out2,
    output reg in_out2,
    output reg [1:0] addr_out2
    );
    
    always@(posedge clk) begin
        case(asn)
            1'd1: begin
                w_out2 = w;
                in_out2 = in;
                addr_out2 = addr;
            end
            1'd0: begin
                w_out1 = w;
                in_out1 = in;
                addr_out1 = addr;
            end
        endcase
    end
endmodule
