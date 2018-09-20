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
`include "debouncer.v"
`include "btn_queue.v"
`include "clk_mgmt.v"
//`include "Sem.v"



module main(
    input clk,
    input btnC,
    input btnL,
    input btnR,
    input sw,
    output an,
    output JA
    );
    
    wire clock;
    wire dsc1 = 0;
    wire dsc2 = 0;
    wire[3:0] queue1;
    wire[3:0] queue2;
    
    clk_mgmt sl_clk(clk, clock);
    
    btn_queue queue(.in(btnL), 
                    .in(btnR), 
                    .in(clk), 
                    .in(dsc1), 
                    .in(dsc2), 
                    .out(queue1), 
                    .out(queue2));
     
endmodule
