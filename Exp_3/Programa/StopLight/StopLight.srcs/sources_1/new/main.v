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
    reg[8:0] contador;
    wire [14:0] salida_sem;
    wire [15:0] entrada_seg;
    wire cross1;
    wire cross2;
    wire hay1;
    wire hay2;
    
    initial
    begin
    contador <= 0;
    end
    
    assign estado_ambulancia = btnC || salida_sem[6];
    assign auto_amb = btnC || btnD;
    assign c_sn = salida_sem[2];
    assign c_eo = salida_sem[5];
    assign led[2] = salida_sem[6];
    assign led[3] = flujo;
    assign JA = salida_sem[5:0];
    assign led[0] = dsc1;
    assign led[1] = dsc2;
    assign led[4] = clock;
    assign cross1 = c_sn && hay1;
    assign cross2 = c_eo && hay2; 
    
    car_counter cr_sn(c_sn, clk,dsc1);
    car_counter cr_eo(c_eo, clk, dsc2);
    clk_mgmt sl_clk(clk,sw,clock);
    
    btn_queue queue(auto_amb,btnR,clk,dsc1,dsc2,flujo, hay1, hay2,queue1,queue2);
    
    sem semaforo(contador,clock,salida_sem);
//    display_split segment_join(queue1,queue2,entrada_seg);
    sevenseg display(contador,clk,an,seg);
    
    always @(posedge clk)
    begin
    contador [8:2] <= salida_sem[14:8];
    contador [1] <= flujo;
    contador [0] <= estado_ambulancia; 
    end
//    assign contador [6:0] = salida_sem[6:0];
//    assign contador [7] = flujo;
//    assign contador [8] = estado_ambulancia;
    
    
endmodule
