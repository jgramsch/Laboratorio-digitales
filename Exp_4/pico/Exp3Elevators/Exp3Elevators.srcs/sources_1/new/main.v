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
    output [2:0] led,
    inout [7:0] JA    
    );
    
    wire [6:0] numero1;
    reg [6:0] numero2;
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
    

    pisosAn marcados1(write_0,addr_0,input_0,line1,led [1]);
    pisosAn marcados2(write_1,addr_0,input_1,line2,led [0]);
    sevenseg2ble display(piso_actual1,piso_actual2,clk,an,seg);
    clk_mgmt clock(clk,sw[2],sclk);
    led_controler lights1(
        stop_sig1,//1 baja, 0 sube 11 puerta
        dir1,
        sclk,
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
                
                wire w0b;
                wire in0b;
                wire addr0b;
                wire w1b;
                wire in1b;
                wire addr1b;

     mux_membrana(
                    clk,
                    dir_mem [0],
                    write_mem,
                    in_mem,
                    dir_mem [1:0],
                    w0b,
                    in0b,
                    addr0b,
                    w1b,
                    in1b,
                    addr1b
                    );
     wire dir_as1;
     wire dir_as2;
     wire [1:0] piso_requerido = req_piso[2:1];
     wire [9:0] request_bus1= {piso_actual1,dir_as1,line1[0:3],req_piso};
     wire [9:0] request_bus2= {piso_actual2,dir_as2,line2[0:3],req_piso};
     wire [3:0] cable1;
     wire [3:0] cable2;
     wire [7:0] in_benja = {cable1,cable2};
     wire id_ascensor;
     
     mov_stop mov1(check_stop1,line1,stop_sig1,piso_actual1);
     mov_stop mov2(check_stop2,line2,stop_sig2,piso_actual2);
     check_request chkrq1(request_bus1,cable1);
     check_request chkrq2(request_bus2,cable2);        
     benja decidor(in_benja,id_ascensor);
     wire w0a;
     wire w1a;
     wire in0a;
     wire in1a;
     wire [1:0]addra;
     wire w0c;
     wire w1c;
     wire in0c;
     wire in1c;
     wire [1:0]addr0c;
     wire [1:0]addr1c;
     elevator_mux elevmu(    
     sclk, //clk de un cuarto segundo
     id_ascensor,
     piso_requerido,
     w0a,
     w1a,
     in0a,
     in1a,
     addra
     );
     
     request_mux req_mux1(
         clk,
         in0a,
         addra,
         w0a,
         in0b,
         addr0b,
         w0b,
         in0c,
         addr0c,
         w0c,
         input_0,
         addr_0,
         write_0
         );
     request_mux req_mux2(
             clk,
             in1a,
             addra,
             w1a,
             in1b,
             addr1b,
             w1b,
             in1c,
             addr1c,
             w1c,
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
                 addr0c,
                 in0c,
                 w0c
                     );
     Idles idle2(
                 sclk,
                 line2,
                 1,
                 addr1c,
                 in1c,
                 w1c
                                     );
                             
endmodule
