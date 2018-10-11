`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 02:42:56 PM
// Design Name: 
// Module Name: Directions
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


module Directions(
    input [1:0] addr,
    input [3:0] line,
    input id,
    output reg dir
    );
    
    always @(*) begin
            case(addr)               
                2'd00:  dir = 1'b0;
                2'd01:
                    begin
                      if (line == 4'd0010)
                      begin
                        dir = 1'b1;
                       end
                      else if (line > 4'd0010)
                      begin
                        dir = 1'b0;
                       end
                      else if (line == 4'd0000)
                        begin
                           case(id)
                            2'd0:
                                begin 
                                    case (addr)
                                       2'd00: dir = 0;
                                       2'd01: dir = 0;
                                       2'd10: dir = 0;
                                       2'd11: dir = 1;
                                    endcase
                                end
                            2'd1: 
                                begin 
                                    case (addr)
                                       2'd00: dir = 0;
                                       2'd01: dir = 1;
                                       2'd10: dir = 1;
                                       2'd11: dir = 1;
                                    endcase
                                 end
                            endcase
                        end
                      end
                 2'd10:
                    begin
                      if (line < 4'd0100)
                      begin
                        dir = 1'b1;
                      end
                      else if (line > 4'd0000)
                      begin
                        dir = 1'b0;                   
                      end
                      else if (line == 4'd0000)
                      begin
                         case(id)
                          2'd0:
                              begin 
                                  case (addr)
                                     2'd00: dir = 0;
                                     2'd01: dir = 1;
                                     2'd10: dir = 1;
                                     2'd11: dir = 1;
                                  endcase
                              end
                          2'd1: 
                              begin 
                                  case (addr)
                                     2'd00: dir = 0;
                                     2'd01: dir = 0;
                                     2'd10: dir = 0;
                                     2'd11: dir = 1;
                                  endcase
                               end
                          endcase
                      end
                    end                     
                 2'd11:  dir = 1'b1;
                 endcase
                 end
                        
endmodule
