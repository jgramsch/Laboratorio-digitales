`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2018 12:01:53 AM
// Design Name: 
// Module Name: treasury
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


module treasury(
    input clk,
    input add_10,
    input add_50,
    input add_100,
    input add_500,
    input reset,
    input conf,
    input btn_devolver,
    input avanzar,
    input [13:0] precio,
    output [15:0] display_pagado,
    output [3:0] leds_monedas,
    output alcanza,
    output vuelto,
    output alcanza_led,
    output vuelto_led
    );
    
    wire usr_a = add_10 & !conf;
    wire usr_b= add_50 & !conf;
    wire usr_c= add_100 & !conf;
    wire usr_d= add_500 & !conf;
    wire sub_10;
    wire sub_50;
    wire sub_100;
    wire sub_500;
    reg [15:0] val_a = 10;
    reg [15:0] val_b = 50;
    reg [15:0] val_c = 100;
    reg [15:0] val_d = 500;
    reg [9:0] cant_inicial = 5;
    wire [15:0] pagado;
    wire [9:0] n_a;
    wire [9:0] n_b;
    wire [9:0] n_c;
    wire [9:0] n_d;
    wire [9:0] tot_a;
    wire [9:0] tot_b;
    wire [9:0] tot_c;
    wire [9:0] tot_d;
    wire [15:0] num_a;
    wire [15:0] num_b;
    wire [15:0] num_c;
    wire [15:0] num_d;
    wire sclk;
    wire enable;
    wire [15:0] diferencia;
    
    assign display_pagado = pagado;
    //coin stacks solo hay de máquina.
    coin_stack s_10(add_10,sub_10,val_a,reset,cant_inicial,tot_a,num_a);
    coin_stack s_50(add_50,sub_50,val_b,reset,cant_inicial,tot_b,num_b);
    coin_stack s_100(add_100,sub_100,val_c,reset,cant_inicial,tot_c,num_c);
    coin_stack s_500(add_500,sub_500,val_d,reset,cant_inicial,tot_d,num_d);

    //guarda el total del usuario solo si config es cero
    user_total usuario(usr_a,usr_b,usr_c,usr_d,pagado);
    
    //dar vuelto con tiempos y volas xd
    clk_mgmt slow(clk,enable,sclk);
    dar_vuelto show_de_vuelto(sclk,avanzar,n_a,n_b,n_c,n_d,enable,sub_10,sub_50,sub_100,sub_500,leds_monedas);
    
    
    //calculadora de vueltos
    vuelto vuelto_calc(clk,precio,pagado,tot_a,tot_b,tot_c,tot_d,n_a,n_b,n_c,n_d,alcanza,alcanza_led,vuelto,vuelto_led,diferencia); 
endmodule
