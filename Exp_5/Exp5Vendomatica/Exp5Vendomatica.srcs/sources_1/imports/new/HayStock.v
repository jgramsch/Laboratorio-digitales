`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2018 12:24:31 PM
// Design Name: 
// Module Name: HayStock
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


module HayStock(
    input clk,
    input [3:0] stock,
    output reg hay          //0: No hay, 1: Hay
    );
    
    always @(posedge clk) begin       
            case(stock)
                4'b0000: hay = 0;   // Si el stock es cero, entonces no se puede hacer la venta.
                default: hay = 1;   //Cualquier número mayor a cero activa un "Si hay".
            endcase
    end
endmodule
