`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2018 04:27:23 PM
// Design Name: 
// Module Name: MemPrecios
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


module MemPrecios(
    input [1:0] tecla,
    input modouso,
    input modoconfig,
    input [13:0] Evalor,
    output reg [13:0] valor
    );
    
    reg [13:0] q;
    reg [13:0] w;
    reg [13:0] e;
    reg [13:0] r;
    
    initial begin
        q = 280;
        w = 600;
        e = 850;
        r = 1000;
    end
    
     always @(*) begin
     case (modouso) // Modo Ventas
        1'b0:    
            begin 
           case(tecla)
             2'b00: valor = q;    
             2'b01: valor = w;
             2'b10: valor = e;
             2'b10: valor = r;
           endcase
           end
        1'b1:   
        begin case (modoconfig)
            1'b0: // Escribir precio
                 begin        
                       case(tecla)
                           2'b00: q = Evalor;    
                           2'b01: w = Evalor;
                           2'b10: e = Evalor;
                           2'b11: r = Evalor;
                       endcase
                         case(tecla)
                          2'b00: valor = q;    
                          2'b01: valor = w;
                          2'b10: valor = e;
                          2'b10: valor = r;
                        endcase
                   end
                    
           1'b1:    // Reset precios
                begin
                    q <= 280;
                    w <= 600;
                    e <= 850;
                    r <= 1000; 
                    valor <= 0;
                end
           endcase
           end
       endcase
       end
                
endmodule
