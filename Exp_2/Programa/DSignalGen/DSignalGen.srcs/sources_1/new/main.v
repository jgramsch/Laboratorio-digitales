`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: PUC
// Engineer: Benjamin Arratia, Henry Blair, Jose Gramtch
// 
// Create Date: 31.08.2018 01:59:15
// Design Name: digital signal generator main module
// Module Name: main
// Project Name: digital signal generato
// Target Devices: Basys 3
// Tool Versions: 
// Description: this module join together all components
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: *CONVENCION DE ARREGLOS: [LARGO - 1:0]*
// 
//////////////////////////////////////////////////////////////////////////////////

//`include "LEDs_mgmt.v"



module main(
    input clk,
    input [2:0] sw,
    input btn,
    output [15:0]led,
    output [3:0]an,
    output [6:0]seg,
    output [7:0]JA
    );

wire main_clk;
wire [7:0] function_count;
wire [23:0] raw_signal;
wire button;
wire [1:0] selector;
wire [7:0] signal;
assign JA = signal;

signal_mux signal_filter(raw_signal[23:16],raw_signal[16:8],raw_signal[7:0],selector,signal);
memory functions(function_count,raw_signal);
clk_mgmt clk_divider(clk,sw [1:0],main_clk);
count_1 fun_counter(main_clk,sw[2],function_count);
Led_mgmt signal_leds(signal,led[15:0]); // problema en este modulo, los cambios finales son cada mucho
sevenseg display(selector,clk,an,seg);
debouncer bonton_in(btn,clk,button);
count_2 sel_count(button,selector);
endmodule
