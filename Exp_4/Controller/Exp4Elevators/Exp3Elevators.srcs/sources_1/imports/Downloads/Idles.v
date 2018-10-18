`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 03:34:12 PM
// Design Name: 
// Module Name: Idles
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


module Idles(
    input sclk,
    input [3:0] line,
    input id,
    output reg [2:0] addr,
    output reg in,
    output reg write
    );

    reg [1:0] counter;    
    always @(sclk) begin    
        counter = counter + 1;
        case(counter)
            2'd11: write = 0;
        endcase
    end
    always @(*) begin
        in = 1;
        case(line)
            4'd0000: 
            begin
            case(id)
                1'd0: 
                begin 
                write = 1;
                addr = 3;
                end
                1'd1:
                begin
                 write = 1;
                 addr = 1;
                end
            endcase
            end
           default: 
           begin 
           write = 0;
           addr = 0;
           end
        endcase
        
    end
  
endmodule
