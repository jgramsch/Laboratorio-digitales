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
`include "debouncer.v"
`include "seven_seg.v"
`include "LEDs_mgmt.v"
`include "clk_mgmt.v"
`include "count_1.v"
`include "count_2.v"
`include "mem.v"
`include "mux.v"



module main(
    input clk,
    input freq,
    input on_off,
    input deb_btn,
    output out_sign,
    output sev_seg,
    output leds
    );
endmodule
