`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2018 01:07:34 AM
// Design Name: 
// Module Name: user_total
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


module user_total(
    input add_a,
    input add_b,
    input add_c,
    input add_d,
    output reg [13:0] pagado
    );
    initial begin
        pagado = 0;
    end
    wire accion = add_a| add_b | add_c |add_d;
    always@(posedge accion)begin
    pagado <= add_a == 1? pagado +10:pagado;
    pagado <= add_b == 1? pagado +50:pagado;
    pagado <= add_c == 1? pagado +100:pagado;
    pagado <= add_d == 1? pagado +500:pagado; 
    end
endmodule
