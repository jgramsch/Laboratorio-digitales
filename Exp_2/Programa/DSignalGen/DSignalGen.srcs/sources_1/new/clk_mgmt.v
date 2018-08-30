`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: PUC
// Engineer: Henry Blair Gonzalez
// 
// Create Date: 30.08.2018 15:47:44
// Design Name: clock divider
// Module Name: clk_mgmt
// Project Name: Digital Signal Generator
// Target Devices: Basys 3
// Tool Versions: 
// Description: clock divider
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: *CONVENCION DE ARREGLOS: [LARGO - 1:0]*
// 
//////////////////////////////////////////////////////////////////////////////////


module clk_mgmt(
    input wire clk_in,
    input[3:0] select, 
    output wire clk_out
    );
    //-- Valor por defecto del divisor
    //-- Como en la iCEstick el reloj es de 12MHz, ponermos un valor de 12M
    //-- para obtener una frecuencia de salida de 1Hz
    parameter M = 12_000_000;
        
    //-- Numero de bits para almacenar el divisor
    //-- Se calculan con la funcion de verilog $clog2, que nos devuelve el 
    //-- numero de bits necesarios para representar el numero M
    //-- Es un parametro local, que no se puede modificar al instanciar
    localparam N = $clog2(M);
        
    //-- Registro para implementar el contador modulo M
    reg [N-1:0] divcounter = 0;
        
    //-- Contador módulo M
    always @(posedge clk_in)
      divcounter <= (divcounter == M - 1)? 0: divcounter + 1;
        
    //-- Sacar el bit mas significativo por clk_out segun select la frecuencia mas baja se hace con select = 0 y la mas rapida con select = 3
    assign clk_out = (select == 0)? divcounter[N-1]: (select == 1)? divcounter[N/2 -1]: (select == 2)? divcounter[N/4 -1]: divcounter[N/8 -1];
endmodule
