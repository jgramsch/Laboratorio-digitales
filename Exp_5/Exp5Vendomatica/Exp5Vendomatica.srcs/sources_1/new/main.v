`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2018 04:20:09 PM
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
    input PS2Clk,
    input PS2Data,
    input sw_conf,
    input btnC,
    input btnU,
    input btnD,
    output [0:6]seg,
    output [3:0]an,
    output [15:0]led
    );
    
    wire conf;
    wire chl1;
    wire chl2;
    wire chl3;
    wire [9:0] tot;
    wire [15:0] tot_num;
    wire [15:0] numero;
    reg [15:0] bee = 500;
    reg [9:0] cee = 2;
    debouncer btnc(btnC,clk,chl1);
    debouncer btnu(btnU,clk,chl2);
    debouncer btnd(btnD,clk,chl3);
    assign led[0] = chl1;
    assign led[1] = chl2;
    assign led[2] = chl3;
    assign led[3] = tot_num[15];
    assign conf = sw_conf;
    sevenseg seg_driver(tot,clk,an,seg);
    coin_stack lala(chl2,chl3,bee,chl1,cee,tot,tot_num);
endmodule
