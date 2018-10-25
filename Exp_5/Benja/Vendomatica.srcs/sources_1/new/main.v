`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2018 04:28:00 PM
// Design Name: 
// Module Name: main
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


module main(
    input clk,
    input [4:0] sw,
    output [1:0] led
);


wire avanzar;
wire modosubventa;
wire modouso;
wire [3:0] stock;
wire [1:0] tecla;
wire okstock;
wire okfondos;
wire okvuelto;
wire enter;
wire submodoconfig;
wire [13:0] Evalor;
wire [13:0] valor;

assign tecla = 2'b00; //Seleccion letra Q
assign modouso = sw[0]; //
assign okfondos = sw[1]; //Cosas que entregan los modulos de Jose
assign okvuelto = sw[2]; //Cosas que entregan los modulos de Jose
assign enter = sw[3];
assign submodoconfig = sw[4];
assign avanzar = okstock & okfondos & okvuelto & enter; // okstock, okfondos, okvuelto, enter, 
assign modosubventa = led;
assign Evalor = 570;


//SubModosVenta MV();
SubModosVenta MV(clk, avanzar, led);
StockProductos SP(clk, tecla, modouso, modosubventa,stock);
HayStock HC(clk, stock, okstock);
MemPrecios MP(tecla, modouso,submodoconfig,Evalor, valor);

endmodule
