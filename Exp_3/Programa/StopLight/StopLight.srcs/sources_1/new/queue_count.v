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
    input wire clk_in,
    input wire discount,
    output[3:0] count_out
    );
    reg[3:0] count = 0;  // Variable auxiliar que lleva la cuenta
    always @(posedge clk_in)
        begin
        count <= (count == 15)? 0: count + 1; // Siempre que clk_in este en el flanco de subida se sube la cuanta hasta 15, luego reinicia la cuenta
        end
    always @(posedge discount)
        begin
        count <= (count == 0)? 0: count - 1; // Siempre que discount este en el flanco de subida se baja la cuanta hasta 0
        end
    assign count_out = count; // Asigna el valor del contador a la variable de salida
endmodule
