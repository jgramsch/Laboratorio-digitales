`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 11:44:59 AM
// Design Name: 
// Module Name: request_mux
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


module request_mux(
    input clk,
    input in1,
    input [1:0] addr1,
    input w1,
    input in2,
    input [1:0] addr2,
    input w2,
    input in3,
    input [1:0] addr3,
    input w3,
    output reg out_in,
    output reg[1:0] out_addr,
    output reg out_w
    );
    
    reg [3:0] counter;
    
    always @(posedge clk) begin
        counter = counter +1;
        case(counter)
            4'd0000:begin
            out_in = in1;
            out_addr = addr1;
            out_w = w1;
            end
            4'd0010:begin
            out_in = in2;
            out_addr = addr2;
            out_w = w2;
            end
            4'd0100:begin
            out_in = in3;
            out_addr = addr3;
            out_w = w3;
            end
            default:begin
            out_in = 0;
            out_w = 0;
            out_addr= 0;
            end
        endcase
    end
endmodule
