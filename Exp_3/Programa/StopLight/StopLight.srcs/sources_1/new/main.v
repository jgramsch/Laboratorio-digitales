`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 19.09.2018 21:49:48
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
    input btnD, //auto s-n
    input btnC, //ambulancia
    input btnR, //auto e-o
    input sw,   //enable clock
    output [4:0]led,
    output [3:0]an, 
    output [0:6]seg,
    output [5:0]JA
    );
    
    wire clock;
    wire dsc1;
    wire dsc2;
    wire flujo;
    wire auto_amb;
    wire estado_ambulancia;
    wire c_sn;
    wire c_eo;
    wire[3:0] queue1;
    wire[3:0] queue2;
    wire [8:0] contador = 0;
    wire [14:0] salida_sem;
    wire [15:0] entrada_seg;
    
    assign estado_ambulancia = btnC || salida_sem[8];
    assign auto_amb = btnC || btnD;
    assign c_sn = salida_sem[9];
    assign c_eo = salida_sem[12];
    assign led[2] = salida_sem[8];
    assign led[3] = flujo;
    assign JA = salida_sem[14:9];
    assign led[0] = dsc1;
    assign led[1] = dsc2;
    assign led[4] = clock;
    
    car_counter cr_sn(c_sn,dsc1);
    car_counter cr_eo(c_eo,dsc2);
    clk_mgmt sl_clk(clk,sw,clock);
    btn_queue queue(auto_amb,btnR,clk,dsc1,dsc2,flujo,queue1,queue2);
    sem semaforo(contador,clock,salida_sem);
    display_split segment_join(queue1,queue2,entrada_seg);
    sevenseg display(entrada_seg,clk,an,seg);
    
//    always @(negedge clock)
//    begin
//    contador [6:0] = salida_sem[6:0];
//    contador [7] = flujo;
//    contador [8] = estado_ambulancia;
//    end
    assign contador [6:0] = salida_sem[6:0];
    assign contador [7] = flujo;
    assign contador [8] = estado_ambulancia;
    
    
endmodule
