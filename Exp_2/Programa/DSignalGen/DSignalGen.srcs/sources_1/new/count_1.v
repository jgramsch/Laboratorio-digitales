`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: PUC
// Engineer: Henry Blair Gonzalez
// 
// Create Date: 30.08.2018 19:00:34
// Design Name: memory counter (counter 1)
// Module Name: count_1
// Project Name: Digital Signal Generator
// Target Devices: Basys 3
// Tool Versions: 
// Description: counter to access memory directions for the samples of the signals in memory
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: *CONVENCION DE ARREGLOS: [LARGO - 1:0]*
// 
//////////////////////////////////////////////////////////////////////////////////


module count_1(
    input wire clk_in,
    output[255:0] count_out
    );
    reg[255:0] count = 0;  //Variable Auxiliar que lleva la cuenta
    always @(posedge clk_in)
        count <= (count == 255)? 0: count + 1;  // Siempre que clk_in este en el flanco de subida se sube la cuanta hasta 255, luego reinicia la cuenta
    assign count_out = count;  // Asigna el valor del contador a la variable de salida
endmodule
