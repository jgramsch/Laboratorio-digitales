`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 02:35:03 PM
// Design Name: 
// Module Name: mov_stop
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


module mov_stop(
    input change,
    input [3:0] line,
    output reg stop_signal,
    input [1:0] piso_actual
    );
    
    initial stop_signal = 1;
    
    always@(posedge change)begin
        case(line[piso_actual])
            1'd0: stop_signal =0;
            1'd1:stop_signal = 1;
        endcase
    end    
endmodule
