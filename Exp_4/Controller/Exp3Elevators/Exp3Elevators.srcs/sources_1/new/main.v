`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2018 03:00:41 AM
// Design Name: 
// Module Name: main
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


module main(
    input clk,
    input btnL,
    input btnR,
    input [7:0] sw,
    output [0:6] seg,
    output [3:0] an,
    output [15:0] led,
    inout [7:0] JA    
    );
    

    wire [3:0] line1;
    wire [3:0] line2;
    wire sclk;
    wire stop_sig1;
    wire stop_sig2;
    wire dir1;
    wire dir2;
    wire check_stop1;
    wire check_stop2;
    wire [1:0] piso_actual1;
    wire [1:0] piso_actual2;
    wire write_mem;
    wire in_mem;
    wire [2:0]dir_mem;
    wire [2:0] req_piso;
    wire write_0;
    wire write_1;
    wire input_0;
    wire addr_0;
    wire input_1;
    wire addr_1;
    wire dumy1;
    wire dumy2;
    
    assign led[3:0] = line1;
    assign led[7:4] = line2;    

    pisosAn marcados1(write_0,addr_0,input_0,line1,dumy1);
    pisosAn marcados2(write_1,addr_1,input_1,line2,dumy2);
    sevenseg2ble display(piso_actual1,piso_actual2,clk,an,seg);
    clk_mgmt clock(clk,sw[2],sclk);
    led_controler lights1(
        stop_sig1,//1 baja, 0 sube 11 puerta
        dir1,
        sclk,
        0,
        led[15], //stop
        led[14], //up
        led[13], //down
        check_stop1,
        piso_actual1
        );
        
    led_controler lights2(
            stop_sig2,//1 baja, 0 sube 11 puerta
            dir2,
            sclk,
            1,
            led[10], //stop
            led[9], //up
            led[8], //down
            check_stop2,
            piso_actual2
            );
     PmodKYPD membrana(
                clk,
                JA,
                write_mem,
                dir_mem,   // 2bts de piso, 1 bit ascensor
                req_piso, //2 bts piso , 1 bit dir
                in_mem
                );
                
                wire wb0;
                wire inb0;
                wire [1:0]addrb0;
                wire wb1;
                wire inb1;
                wire [1:0] addrb1;

     mux_membrana mem_mux(
                    clk,
                    dir_mem [0],
                    write_mem,
                    in_mem,
                    dir_mem [1:0],
                    wb0,
                    inb0,
                    addrb0,
                    wb1,
                    inb1,
                    addrb1
                    );
     wire dir_as1;
     wire dir_as2;
     wire [1:0] piso_requerido = req_piso[2:1];
     wire [9:0] request_bus1= {piso_actual1,dir_as1,line1,req_piso};
     wire [9:0] request_bus2= {piso_actual2,dir_as2,line2,req_piso};
     wire [3:0] cable1;
     wire [3:0] cable2;
     wire [7:0] in_benja = {cable1,cable2};
     wire id_ascensor;
     
     mov_stop mov1(check_stop1,line1,stop_sig1,piso_actual1);
     mov_stop mov2(check_stop2,line2,stop_sig2,piso_actual2);
     check_request chkrq1(request_bus1,cable1);
     check_request chkrq2(request_bus2,cable2);        
     benja decidor(in_benja,id_ascensor);
     wire wa0;
     wire wa1;
     wire ina0;
     wire ina1;
     wire [1:0]addra;
     wire wc0;
     wire wc1;
     wire inc0;
     wire inc1;
     wire [1:0]addrc0;
     wire [1:0]addrc1;
     elevator_mux elevmu(    
     sclk, //clk de un cuarto segundo
     id_ascensor,
     piso_requerido,
     wa0,
     wa1,
     ina0,
     ina1,
     addra
     );
     
     request_mux req_mux1(
         clk,
         ina0,
         addra,
         wa0,
         inb0,
         addrb0,
         wb0,
         inc0,
         addrc0,
         wc0,
         input_0,
         addr_0,
         write_0
         );
     request_mux req_mux2(
             clk,
             ina1,
             addra,
             wa1,
             inb1,
             addrb1,
             wb1,
             inc1,
             addrc1,
             wc1,
             input_1,
             addr_1,
             write_1
             );
     Directions directions1(
                 piso_actual1,
                 line1,
                 0,
                 dir_as1
                 );
     Directions directions2(
                 piso_actual2,
                 line2,
                 1,
                 dir_as2
                 );
     Idles idle1(
                 sclk,
                 line1,
                 0,
                 addrc0,
                 inc0,
                 wc0
                     );
     Idles idle2(
                 sclk,
                 line2,
                 1,
                 addrc1,
                 inc1,
                 wc1
                                     );
                             
endmodule
