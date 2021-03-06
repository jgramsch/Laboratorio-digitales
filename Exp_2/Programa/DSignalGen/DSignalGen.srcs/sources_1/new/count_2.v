`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: PUC
// Engineer: Henry Blair Gonzalez
// 
// Create Date: 30.08.2018 19:01:05
// Design Name: signal counter
// Module Name: count_2
// Project Name: Digital Signal Generator
// Target Devices: Basys 3
// Tool Versions: 
// Description: counter to set wich channel should be listen to
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: *CONVENCION DE ARREGLOS: [LARGO - 1:0]*
// 
//////////////////////////////////////////////////////////////////////////////////


module count_2(
    input wire clk_in,
    output[1:0] count_out
    );
    reg[1:0] count = 0;  // Variable auxiliar que lleva la cuenta
    always @(posedge clk_in)
        begin
        count <= (count == 2)? 0: count + 1; // Siempre que clk_in este en el flanco de subida se sube la cuanta hasta 2, luego reinicia la cuenta
        end
    assign count_out = count; // Asigna el valor del contador a la variable de salida
endmodule
