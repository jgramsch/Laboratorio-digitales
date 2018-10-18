`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2018 03:20:10 AM
// Design Name: 
// Module Name: pisosAn
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


module pisosAn(
    input w,
    input [1:0] addr,
    input in,
    output reg [0:3] line,
    output reg out
    );
    always @(*) begin
        case(w)
            1'd1: 
            begin
            case(addr)
                2'd00: line[0] = in;
                2'd01: line[1] = in;
                2'd10: line[2] = in;
                2'd11: line[3] = in;
            endcase
            out = line[addr];
            end
            default: out = line[addr];
        endcase
    end
    
    
    
endmodule
