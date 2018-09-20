`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: PUC
// Engineer: Henry Blair Gonzalez
//
// Create Date: 30.08.2018 19:01:05
// Design Name: button queue
// Module Name: btn_queue
// Project Name: StopLight
// Target Devices: Basys 3
// Tool Versions:
// Description: button that counts up while pressed and counts dowun while signal discount is 1
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: *CONVENCION DE ARREGLOS: [LARGO - 1:0]*
//
//////////////////////////////////////////////////////////////////////////////////


module btn_queue(
    input btn1,
    input btn2,
    input dsc1,
    input dsc2,
    input clk,
    output high,
    output[3:0] q_count1,
    output[3:0] q_count2
    );

    wire b_count1, b_count2;
    wire[3:0] qq_count1;
    wire[3:0] qq_count2;

    debouncer my_btn1(btn1, clk, b_count1);
    debouncer my_btn2(btn2, clk, b_count2);

    queue_count my_count1(b_count1, dsc1, qq_count1);
    queue_count my_count2(b_count2, dsc2, qq_count2);
    
    assign high = (qq_count1 >= 6)? (qq_count2 >= 6)? 1:0 :(qq_count2 >= 6)? 1:0;
    assign q_count1 = qq_count1;
    assign q_count2 = qq_count2;

endmodule
