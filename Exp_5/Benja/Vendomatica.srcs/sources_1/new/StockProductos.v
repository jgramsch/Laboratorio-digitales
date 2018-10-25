`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2018 08:33:22 PM
// Design Name: 
// Module Name: StockProductos
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


module StockProductos(
    input clk,
    input [1:0] tecla,
    input modouso,
    input modosubventa,
    output reg [3:0] stock
    );
    
    reg [3:0] q;
    reg [3:0] w;
    reg [3:0] e;
    reg [3:0] r;
        
    initial begin
        q = 10;
        w = 6;
        e = 5;
        r = 8;
    end
        
    always @(posedge clk) begin
        case (modouso)
        1'b0 :      
        begin
        case (modosubventa)
            1'b0: // Modo Consulta Stock
                     begin 
                       case(tecla)
                         2'b00: stock = q;    
                         2'b01: stock = w;
                         2'b10: stock = e;
                         2'b11: stock = r;
                       endcase
                       end
                      1'b1: // Modo Venta
                          begin 
                             case(tecla)
                               2'b00: 
                                    begin                              
                                    q <= q - 1; 
                                    stock = q;                   
                                    end                                      
                               2'b01: 
                                    begin 
                                    w <= w - 1; 
                                    stock = w;                   
                                    end 
                               2'b10: 
                                    begin 
                                    \e <= e - 1; 
                                    stock = e;                   
                                    end
                               2'b11: 
                                    begin 
                                    r <= r - 1; 
                                    stock = r;                   
                                    end
                             endcase
                             end
                     endcase
                     end
             1'b1: // Modo Config
             begin case(modosubventa)
                 1'b0: // Modo Relleno
                    begin 
                      case(tecla)
                        2'b00: 
                             begin 
                             q <= q + 1; 
                             stock = q;                   
                             end                                      
                        2'b01: 
                             begin 
                             w <= w + 1; 
                             stock = w;                   
                             end 
                        2'b10: 
                             begin 
                             e <= e + 1; 
                             stock = e;                   
                             end
                        2'b11: 
                             begin 
                             r <= r + 1; 
                             stock = r;                   
                             end
                      endcase
                      end
                  1'b1: // Modo Reset
                    begin
                        q <= 10;
                        w <= 6;
                        e <= 5;
                        r <= 8; 
                        stock <= 0;
                    end             
            endcase
            end
    endcase
    end
    
endmodule
