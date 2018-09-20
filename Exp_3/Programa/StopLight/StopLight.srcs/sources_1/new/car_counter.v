`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 20.09.2018 15:03:22
// Design Name:
// Module Name: car_counter
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


module car_counter(
    input green_light,
    input clk,
    output car_out
    );

    parameter M = 75_000_000;
    parameter tsh = 25_000_000;
    localparam N = $clog2(M);

    reg [N-1:0] divcounter = 0;
    reg car_cross;

    always @(posedge green_light)
    begin
        always @(posedge clk)
        begin
            divcounter <= (divcounter == M)? 0: divcounter + 1;
            car_cross <=  (divcounter >= tsh)? 0:1;
        end  
    end

    assign car_out = car_cross;
endmodule
