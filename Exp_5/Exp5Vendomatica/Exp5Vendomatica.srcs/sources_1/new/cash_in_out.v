`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2018 04:55:56 PM
// Design Name: 
// Module Name: vuleto
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


  module vuelto(
    input clk,
    input [13:0] precio,
    input [13:0] pagado,
    //totales desde la máquina
    input [9:0] tot_a, //10
    input [9:0] tot_b, //50
    input [9:0] tot_c, //100
    input [9:0] tot_d, //500
    output reg [9:0] n_a,
    output reg [9:0] n_b,
    output reg [9:0] n_c,
    output reg [9:0] n_d,
    output reg alcanza,
    output reg alcanza_led,
    output reg vuelto,
    output reg vuelto_led,
    output reg [13:0] diferencia
    );
    
    reg  [13:0] num_a;
    reg  [13:0] num_b;
    reg  [13:0] num_c;
    reg  [13:0] num_d;
    reg [9:0] goal_am;
    reg [13:0] diff_aux; //diferencia capaz de entregar según el stock de monedas
    
    initial begin 
    goal_am = 5;
    num_a = 0;
    vuelto = 0; //no hay vuelto al ppio.
    vuelto_led = 1;
    alcanza = 0; //no alcanza al ppio.
    alcanza_led = 1;
    end
    
    
    always@(posedge clk)begin
        
        if(precio<pagado)begin
        diferencia = pagado-precio;
        num_d = (diferencia/500);
        diff_aux = num_d<tot_d? diferencia - num_d*500 :diferencia - tot_d*500 ;
        n_d = num_d<tot_d? num_d:tot_d;
        num_c = (diff_aux/100);
        diff_aux = num_c<tot_c? diff_aux - num_c*100 :diff_aux - tot_c*100 ;
        n_c = num_c<tot_c? num_c:tot_c;
        num_b = (diff_aux/50);
        diff_aux = num_b<tot_b? diff_aux - num_b*50 :diff_aux - tot_b*50;
        n_b = num_b<tot_b? num_b:tot_b;
        num_a = (diff_aux/10);
        diff_aux = num_a<tot_a? diff_aux - num_a*10 :diff_aux - tot_a*10 ;
        n_a = num_a<tot_a? num_a:tot_a;
        vuelto = diff_aux>0? 0:1;
        alcanza = 1;
        end
        else begin
            diferencia = 0;
            alcanza = 0;
            vuelto = 0;
        end
        alcanza_led = ~alcanza;
        vuelto_led = ~vuelto;
        end
endmodule
