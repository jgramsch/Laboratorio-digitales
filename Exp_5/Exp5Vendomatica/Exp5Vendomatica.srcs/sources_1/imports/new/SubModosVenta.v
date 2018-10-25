`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2018 11:48:50 AM
// Design Name: 
// Module Name: SubModosVenta
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


module SubModosVenta(
    input clk,
    input avanzar,
    output reg [1:0] proximo
    );
    
     reg actual;
      
     initial begin
         actual = 0;
     end
    
    always @(posedge clk) begin
        case (avanzar)
            1'b0: proximo = actual;    // Se devuelve al estado inicial
            1'b1: begin
                case(actual)
                    1'b0: proximo = 1'b1; 
                    1'b1: proximo = 1'b0;
                endcase
            end
        endcase
        end
endmodule
