`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2018 11:22:31
// Design Name: 
// Module Name: code_translate
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


module code_translate(
    input clk,
    input[3:0] code,
    output new_code,
    output is_floor  // Flag to show if it is a floor dir
    );
    reg [2:0] floor_req;  // floor(2bit) + up/down(1bit)
    reg [2:0] elevr_req;  // flor(2bit) + ascensor 1bit
    reg flr_req = 1'b0;  // 1 si es una floor request, 0 si es elevator dir
    
    always @(posedge clk) begin
    case(code)
    4'b0000: begin
    floor_req = 3'b001;
    flr_req = 1'b1;
    end
    4'b0001: begin
    elevr_req = 3'b001;
    flr_req = 1'b0;
    end
    4'b0010: begin
    elevr_req = 3'b011;
    flr_req = 1'b0;
    end
    4'b0011: begin
    elevr_req = 3'b101;
    flr_req = 1'b0;
    end
    4'b0100: begin
    elevr_req = 3'b000;
    flr_req = 1'b0;
    end
    4'b0101: begin
    elevr_req = 3'b010;
    flr_req = 1'b0;
    end
    4'b0110: begin
    elevr_req = 3'b100;
    flr_req = 1'b0;
    end
    4'b0111: begin
    floor_req = 3'b110;
    flr_req = 1'b1;
    end
    4'b1000: begin
    floor_req = 3'b110;
    flr_req = 1'b1;
    end
    4'b1001: begin
    floor_req = 3'b101;
    flr_req = 1'b1;
    end
    4'b1010: begin
    elevr_req = 3'b111;
    flr_req = 1'b0;
    end
    4'b1011: begin
    elevr_req = 3'b110;
    flr_req = 1'b0;
    end
    4'b1100: begin
    floor_req = 3'b100;
    flr_req = 1'b1;
    end
    4'b1101: begin
    floor_req = 3'b010;
    flr_req = 1'b1;
    end
    4'b1110: begin
    floor_req = 3'b011;
    flr_req = 1'b1;
    end
    4'b1111: begin
    floor_req = 3'b001;
    flr_req = 1'b1;
    end    
    endcase
    end
    assign is_floor = flr_req;
    assign new_code = (flr_req == 1'b1)? floor_req: elevr_req;
endmodule
