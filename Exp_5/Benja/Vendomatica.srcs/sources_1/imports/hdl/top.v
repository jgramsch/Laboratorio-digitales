`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent Inc 
// Engineer: Arthur Brown
// 
// Create Date: 07/27/2016 02:04:01 PM
// Design Name: Basys3 Keyboard Demo
// Module Name: top
// Project Name: Keyboard
// Target Devices: Basys3
// Tool Versions: 2016.X
// Description: 
//     Receives input from USB-HID in the form of a PS/2, displays keyboard key presses and releases over USB-UART.
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//     Known issue, when multiple buttons are pressed and one is released, the scan code of the one still held down is ometimes re-sent.
//////////////////////////////////////////////////////////////////////////////////


module top(
    input              clk,
    input              PS2Data,
    input              PS2Clk,
    input  wire [15:0] sw, 
    output wire [15:0] led
);

    reg         CLK50MHZ=0;
    wire        reset=0; 
    wire [15:0] boletas;  // Cuenta de boletas
    wire [15:0] keycode;  // Codigo de tecla presionada (16bits)
    wire        flag;
    wire        key_new_code;  // Código de tecla para máquina (4bits)
    
    
    always @(posedge(clk))begin
        CLK50MHZ<=~CLK50MHZ;
    end
    
    PS2Receiver uut (
        .clk(CLK50MHZ),
        .kclk(PS2Clk),
        .kdata(PS2Data),
        .keycode(keycode),
        .oflag(flag)
    );
    
    key_translate C1(
        .keycode(keycode),
//        .rescode(led)
        .rescode(key_new_code)
    );
    
    config_machine M2(
        .sw(sw),
        .clk(clk),
        .keycode(key_new_code),
        .boletas(boletas),
        .id(),
        .add_coin(),
        .add_prod(),
        .em_boletas(boletas)
    );
    
    count_1 bol(
        .clk_in(),
        .reset(reset),
        .count_out(boletas)
    );
                    
//    assign led = keycode;
endmodule
