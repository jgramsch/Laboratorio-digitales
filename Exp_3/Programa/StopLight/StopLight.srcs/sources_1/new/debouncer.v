`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: PUC
// Engineer: Henry Blair Gonzalez
//
// Create Date: 30.08.2018 19:01:05
// Design Name: button debouncer
// Module Name: debouncer
// Project Name: StopLight
// Target Devices: Basys 3
// Tool Versions:
// Description: manages the behaviour of pressing a button.
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: *CONVENCION DE ARREGLOS: [LARGO - 1:0]*
//
//////////////////////////////////////////////////////////////////////////////////


module debouncer(
    input btn,
    input clk,
    output chnl
    );

    reg button_ff1 = 0; //button flip-flop for synchronization. Initialize it to 0
    reg button_ff2 = 0; //button flip-flop for synchronization. Initialize it to 0; //20 bits count for increment & decrement when button is pressed or released. Initialize it to 0

    parameter M = 12_000_000;
    parameter tsh = 6_000_000;  // Threshold del debouncer.

    //-- Numero de bits para almacenar el divisor
    //-- Se calculan con la funcion de verilog $clog2, que nos devuelve el
    //-- numero de bits necesarios para representar el numero M
    //-- Es un parametro local, que no se puede modificar al instanciar
    localparam N = $clog2(M);

    //-- Registro para implementar el contador modulo M
    reg [N-1:0] divcounter = 0;
    reg dbsign = 0;

    always @(posedge clk)
      begin
      button_ff1 <= btn;
      button_ff2 <= button_ff1;
      end

    //-- Contador m�dulo M
    always @(posedge clk)
      begin
      divcounter <= (button_ff2)? (divcounter < M - 1)? divcounter + 1: M - 2: (divcounter > 0)? divcounter - 1: 1;  // Si se presiona el boton y mientras el contador pueda crecer la cuenta crece. Si no mientras el contador pueda decrecer decrece.
      dbsign <= (divcounter < tsh)? 0: 1;  // Si el contador pasa el threshold emite un 1, sino un 0
      end

    assign chnl = dbsign;  // Se asinga el valor esperado.
endmodule
