`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: PUC
// Engineer: Henry Blair Gonzalez
//
// Create Date: 30.08.2018 19:01:05
// Design Name: queue counter
// Module Name: queue_count
// Project Name: StopLight
// Target Devices: Basys 3
// Tool Versions:
// Description: counter to set number of cars waiting on the stoplight
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: *CONVENCION DE ARREGLOS: [LARGO - 1:0]*
//
//////////////////////////////////////////////////////////////////////////////////


module queue_count(
    input clk_in,
    input discount,
    output[3:0] count_out
    );
    reg[3:0] count = 0;  // Variable auxiliar que lleva la cuenta
    always @(posedge clk_in)
        begin
        count <= (discount==1)? (count == 0)? 0: count - 1: (count == 15)? 0: count + 1; // Si la señal discount se encuentra activa y es 0 se mantiene en 0, de no ser asi descuenta y en caso de no estar activa discount la cuenta incrementa
        end
    assign count_out = count; // Asigna el valor del contador a la variable de salida
endmodule
