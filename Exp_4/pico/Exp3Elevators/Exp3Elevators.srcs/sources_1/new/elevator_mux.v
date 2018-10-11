`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2018 03:44:18 PM
// Design Name: 
// Module Name: elevator_mux
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


module elevator_mux(
    input sclk, //clk de un cuarto segundo
    input elev,
    input [1:0] floor,
    output reg w0,
    output reg w1,
    output reg in0,
    output reg in1,
    output reg [1:0] addr
    );
    
    reg [1:0] counter;
    wire [2:0] change = {floor,elev};
    
    always @(sclk) begin
    counter = counter +1;
    case(counter)
        2'd11:begin
           w0 = 0;
           w1 = 0;
           in1 = 0;
           in0 = 0; 
        end
        
    endcase
    end
    
    always @(change) begin
    addr = floor;
    case(elev)
        1'd0: begin
        w0 = 1;
        in0 = 1;
        counter = 0;
        end
        1'd1: begin
        w1 = 1;
        in1 = 1;
        counter = 0;
        end
    endcase
    end
endmodule
