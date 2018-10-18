`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2018 04:35:47 AM
// Design Name: 
// Module Name: led_controler
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


module led_controler(
    input stop_signal,//1 baja, 0 sube 11 puerta
    input dir,
    input sclk,
    input id,
    output reg led_stop,
    output reg led_up,
    output reg led_dw,
    output reg check,
    output reg [1:0] piso_actual
    );
    
    initial begin
    case(id)
    1'd0: piso_actual = 3;
    1'd1: piso_actual = 1;
    endcase
    end
    reg [3:0]counter;
    always@(posedge sclk)begin
        counter = counter + 1;
        case(stop_signal)
        1'd0:begin
            case(dir)
            1'd0:begin
            case(counter)
            4'd0000: led_up = 1;
            4'd0001: led_up = 1;
            4'd0010: led_up = 1;
            4'd0011: led_up = 1;
            4'd0100: led_up = 1;
            4'd0101: begin
            led_up = 0;
            check = 1;
            piso_actual = piso_actual + 1;
            end
            4'd0110: begin 
            check = 0;
            counter = 0;
            end                  
            endcase
            end
            1'd1:begin
            case(counter)
            4'd0000: led_dw = 1;
            4'd0001: led_dw = 1;
            4'd0010: led_dw = 1;
            4'd0011: led_dw = 1;
            4'd0100: led_dw = 1;
            4'd0101: begin
            led_dw = 0;
            check = 1;
            piso_actual = piso_actual -1;
            end
            4'd0110: begin 
            check = 0;
            counter = 0;
            end                  
            endcase
            end
            endcase
        end
        1'd1:begin
          case(counter)
          4'd0000: led_stop = 1;
          4'd0001: led_stop = 1;
          4'd0010: led_stop = 1;
          4'd0011: led_stop = 1;
          4'd0100: led_stop = 1;
          4'd0101: led_stop = 1;
          4'd0110: led_stop = 1;
          4'd0111: led_stop = 0;
          4'd1000: begin
          led_stop = 0;
          check = 1;
          end
          4'd1001: begin
          check = 0;
          counter = 0;
          end                  
          endcase
        end
     endcase
end
endmodule
