`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2018 01:07:34 AM
// Design Name: 
// Module Name: dar_vuelto
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


module dar_vuelto(
    input sclk,
    input avanzar,
    input [9:0] n_a,
    input [9:0] n_b,
    input [9:0] n_c,
    input [9:0] n_d,
    output reg enable,
    output reg sub_a,
    output reg sub_b,
    output reg sub_c,
    output reg sub_d,
    output [3:0]led_out
    );
    
    reg [9:0]left_a;
    reg [9:0]left_b;
    reg [9:0]left_c;
    reg [9:0]left_d;
    reg counter;
    assign led_out = {sub_a,sub_b,sub_c,sub_d};
    
    initial begin
        sub_a <= 0;
        sub_b <= 0;
        sub_c <= 0;
        sub_d <= 0;
        enable <= 0;
    end
    always@(posedge avanzar)begin
        enable <= 1;
        left_a = n_a;
        left_b = n_b;
        left_c = n_c;
        left_d = n_d;
    end
    always@(posedge sclk)begin
    counter = counter +1;
    case(counter)
    1'b0: begin
    if (left_a > 0)begin
        left_a <= left_a -1;
        sub_a <= 1;
    end
    if (left_b > 0)begin
        left_b <= left_b -1;
        sub_b <= 1;
    end
    if (left_c > 0)begin
        left_c <= left_c -1;
        sub_c <= 1;
    end
    if (left_d > 0)begin
        left_d = left_d -1;
        sub_d <= 1;
    end
    end
    1'b0: begin
    sub_a <= 0;
    sub_b <= 0;
    sub_c <= 0;
    sub_d <= 0;
    end
    endcase
    enable <= (left_a <= 0 & left_b <= 0 &left_c <= 0&left_d <= 0) ? 0:1;
    end
endmodule
