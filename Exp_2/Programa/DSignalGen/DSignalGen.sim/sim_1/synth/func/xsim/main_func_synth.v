// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Wed Sep 12 00:53:33 2018
// Host        : Ceres running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file {/home/jose/Documents/UC/Lab.
//               digitales/repo/Exp_2/Programa/DSignalGen/DSignalGen.sim/sim_1/synth/func/xsim/main_func_synth.v}
// Design      : main
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clk_mgmt
   (led_OBUF,
    sw_IBUF,
    clk_IBUF_BUFG);
  output [0:0]led_OBUF;
  input [1:0]sw_IBUF;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire [23:1]data0;
  wire divcounter1_carry__0_n_0;
  wire divcounter1_carry__0_n_1;
  wire divcounter1_carry__0_n_2;
  wire divcounter1_carry__0_n_3;
  wire divcounter1_carry__1_n_0;
  wire divcounter1_carry__1_n_1;
  wire divcounter1_carry__1_n_2;
  wire divcounter1_carry__1_n_3;
  wire divcounter1_carry__2_n_0;
  wire divcounter1_carry__2_n_1;
  wire divcounter1_carry__2_n_2;
  wire divcounter1_carry__2_n_3;
  wire divcounter1_carry__3_n_0;
  wire divcounter1_carry__3_n_1;
  wire divcounter1_carry__3_n_2;
  wire divcounter1_carry__3_n_3;
  wire divcounter1_carry__4_n_2;
  wire divcounter1_carry__4_n_3;
  wire divcounter1_carry_n_0;
  wire divcounter1_carry_n_1;
  wire divcounter1_carry_n_2;
  wire divcounter1_carry_n_3;
  wire \divcounter[0]_i_1_n_0 ;
  wire \divcounter[23]_i_1_n_0 ;
  wire \divcounter[23]_i_2_n_0 ;
  wire \divcounter[23]_i_3_n_0 ;
  wire \divcounter[23]_i_4_n_0 ;
  wire \divcounter[23]_i_5_n_0 ;
  wire \divcounter[23]_i_6_n_0 ;
  wire \divcounter_reg_n_0_[0] ;
  wire \divcounter_reg_n_0_[10] ;
  wire \divcounter_reg_n_0_[12] ;
  wire \divcounter_reg_n_0_[13] ;
  wire \divcounter_reg_n_0_[14] ;
  wire \divcounter_reg_n_0_[15] ;
  wire \divcounter_reg_n_0_[16] ;
  wire \divcounter_reg_n_0_[17] ;
  wire \divcounter_reg_n_0_[18] ;
  wire \divcounter_reg_n_0_[19] ;
  wire \divcounter_reg_n_0_[1] ;
  wire \divcounter_reg_n_0_[20] ;
  wire \divcounter_reg_n_0_[21] ;
  wire \divcounter_reg_n_0_[22] ;
  wire \divcounter_reg_n_0_[23] ;
  wire \divcounter_reg_n_0_[3] ;
  wire \divcounter_reg_n_0_[4] ;
  wire \divcounter_reg_n_0_[6] ;
  wire \divcounter_reg_n_0_[7] ;
  wire \divcounter_reg_n_0_[8] ;
  wire \divcounter_reg_n_0_[9] ;
  wire [0:0]led_OBUF;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire [1:0]sw_IBUF;
  wire [3:2]NLW_divcounter1_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_divcounter1_carry__4_O_UNCONNECTED;

  CARRY4 divcounter1_carry
       (.CI(1'b0),
        .CO({divcounter1_carry_n_0,divcounter1_carry_n_1,divcounter1_carry_n_2,divcounter1_carry_n_3}),
        .CYINIT(\divcounter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\divcounter_reg_n_0_[4] ,\divcounter_reg_n_0_[3] ,p_0_in,\divcounter_reg_n_0_[1] }));
  CARRY4 divcounter1_carry__0
       (.CI(divcounter1_carry_n_0),
        .CO({divcounter1_carry__0_n_0,divcounter1_carry__0_n_1,divcounter1_carry__0_n_2,divcounter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\divcounter_reg_n_0_[8] ,\divcounter_reg_n_0_[7] ,\divcounter_reg_n_0_[6] ,p_1_in}));
  CARRY4 divcounter1_carry__1
       (.CI(divcounter1_carry__0_n_0),
        .CO({divcounter1_carry__1_n_0,divcounter1_carry__1_n_1,divcounter1_carry__1_n_2,divcounter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\divcounter_reg_n_0_[12] ,p_2_in,\divcounter_reg_n_0_[10] ,\divcounter_reg_n_0_[9] }));
  CARRY4 divcounter1_carry__2
       (.CI(divcounter1_carry__1_n_0),
        .CO({divcounter1_carry__2_n_0,divcounter1_carry__2_n_1,divcounter1_carry__2_n_2,divcounter1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\divcounter_reg_n_0_[16] ,\divcounter_reg_n_0_[15] ,\divcounter_reg_n_0_[14] ,\divcounter_reg_n_0_[13] }));
  CARRY4 divcounter1_carry__3
       (.CI(divcounter1_carry__2_n_0),
        .CO({divcounter1_carry__3_n_0,divcounter1_carry__3_n_1,divcounter1_carry__3_n_2,divcounter1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\divcounter_reg_n_0_[20] ,\divcounter_reg_n_0_[19] ,\divcounter_reg_n_0_[18] ,\divcounter_reg_n_0_[17] }));
  CARRY4 divcounter1_carry__4
       (.CI(divcounter1_carry__3_n_0),
        .CO({NLW_divcounter1_carry__4_CO_UNCONNECTED[3:2],divcounter1_carry__4_n_2,divcounter1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_divcounter1_carry__4_O_UNCONNECTED[3],data0[23:21]}),
        .S({1'b0,\divcounter_reg_n_0_[23] ,\divcounter_reg_n_0_[22] ,\divcounter_reg_n_0_[21] }));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \divcounter[0]_i_1 
       (.I0(\divcounter_reg_n_0_[0] ),
        .O(\divcounter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \divcounter[23]_i_1 
       (.I0(\divcounter[23]_i_2_n_0 ),
        .I1(\divcounter_reg_n_0_[17] ),
        .I2(\divcounter_reg_n_0_[23] ),
        .I3(\divcounter_reg_n_0_[1] ),
        .I4(\divcounter_reg_n_0_[15] ),
        .I5(\divcounter[23]_i_3_n_0 ),
        .O(\divcounter[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \divcounter[23]_i_2 
       (.I0(\divcounter_reg_n_0_[6] ),
        .I1(\divcounter_reg_n_0_[20] ),
        .I2(\divcounter_reg_n_0_[21] ),
        .I3(\divcounter_reg_n_0_[8] ),
        .O(\divcounter[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \divcounter[23]_i_3 
       (.I0(\divcounter[23]_i_4_n_0 ),
        .I1(\divcounter_reg_n_0_[4] ),
        .I2(p_2_in),
        .I3(\divcounter_reg_n_0_[19] ),
        .I4(\divcounter_reg_n_0_[22] ),
        .I5(\divcounter[23]_i_5_n_0 ),
        .O(\divcounter[23]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \divcounter[23]_i_4 
       (.I0(\divcounter_reg_n_0_[3] ),
        .I1(\divcounter_reg_n_0_[7] ),
        .I2(\divcounter_reg_n_0_[12] ),
        .I3(p_1_in),
        .O(\divcounter[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \divcounter[23]_i_5 
       (.I0(\divcounter_reg_n_0_[10] ),
        .I1(\divcounter_reg_n_0_[14] ),
        .I2(\divcounter_reg_n_0_[13] ),
        .I3(\divcounter_reg_n_0_[16] ),
        .I4(\divcounter[23]_i_6_n_0 ),
        .O(\divcounter[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \divcounter[23]_i_6 
       (.I0(\divcounter_reg_n_0_[18] ),
        .I1(\divcounter_reg_n_0_[0] ),
        .I2(\divcounter_reg_n_0_[9] ),
        .I3(p_0_in),
        .O(\divcounter[23]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\divcounter[0]_i_1_n_0 ),
        .Q(\divcounter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[10]),
        .Q(\divcounter_reg_n_0_[10] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[11]),
        .Q(p_2_in),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[12]),
        .Q(\divcounter_reg_n_0_[12] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[13]),
        .Q(\divcounter_reg_n_0_[13] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[14]),
        .Q(\divcounter_reg_n_0_[14] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[15]),
        .Q(\divcounter_reg_n_0_[15] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[16]),
        .Q(\divcounter_reg_n_0_[16] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[17]),
        .Q(\divcounter_reg_n_0_[17] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[18]),
        .Q(\divcounter_reg_n_0_[18] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[19]),
        .Q(\divcounter_reg_n_0_[19] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(\divcounter_reg_n_0_[1] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[20]),
        .Q(\divcounter_reg_n_0_[20] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[21]),
        .Q(\divcounter_reg_n_0_[21] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[22]),
        .Q(\divcounter_reg_n_0_[22] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[23]),
        .Q(\divcounter_reg_n_0_[23] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(p_0_in),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(\divcounter_reg_n_0_[3] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(\divcounter_reg_n_0_[4] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(p_1_in),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(\divcounter_reg_n_0_[6] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(\divcounter_reg_n_0_[7] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[8]),
        .Q(\divcounter_reg_n_0_[8] ),
        .R(\divcounter[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divcounter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[9]),
        .Q(\divcounter_reg_n_0_[9] ),
        .R(\divcounter[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \led_OBUF[8]_inst_i_1 
       (.I0(p_0_in),
        .I1(p_1_in),
        .I2(sw_IBUF[1]),
        .I3(p_2_in),
        .I4(sw_IBUF[0]),
        .I5(\divcounter_reg_n_0_[23] ),
        .O(led_OBUF));
endmodule

(* NotValidForBitStream *)
module main
   (clk,
    sw,
    led,
    an,
    seg);
  input clk;
  input [9:0]sw;
  output [8:0]led;
  output [3:0]an;
  output [6:0]seg;

  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [8:0]led;
  wire [8:8]led_OBUF;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [9:0]sw;
  wire [9:0]sw_IBUF;

  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  clk_mgmt clk_divider
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF),
        .sw_IBUF(sw_IBUF[9:8]));
  sevenseg display
       (.an_OBUF(an_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .seg_OBUF(seg_OBUF),
        .sw_IBUF(sw_IBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(1'b0),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(1'b0),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(1'b0),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(1'b0),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(1'b0),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(1'b0),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(1'b0),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(1'b0),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF),
        .O(led[8]));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(sw_IBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(sw_IBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(sw_IBUF[7]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(sw_IBUF[8]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(sw_IBUF[9]));
endmodule

module sevenseg
   (seg_OBUF,
    an_OBUF,
    clk_IBUF_BUFG,
    sw_IBUF);
  output [6:0]seg_OBUF;
  output [3:0]an_OBUF;
  input clk_IBUF_BUFG;
  input [9:0]sw_IBUF;

  wire LED_BCD0__14_carry__0_i_1_n_0;
  wire LED_BCD0__14_carry__0_i_2_n_0;
  wire LED_BCD0__14_carry__0_i_3_n_0;
  wire LED_BCD0__14_carry__0_i_4_n_0;
  wire LED_BCD0__14_carry__0_i_5_n_0;
  wire LED_BCD0__14_carry__0_i_6_n_0;
  wire LED_BCD0__14_carry__0_i_7_n_0;
  wire LED_BCD0__14_carry__0_i_8_n_0;
  wire LED_BCD0__14_carry__0_i_9_n_0;
  wire LED_BCD0__14_carry__0_n_0;
  wire LED_BCD0__14_carry__0_n_1;
  wire LED_BCD0__14_carry__0_n_2;
  wire LED_BCD0__14_carry__0_n_3;
  wire LED_BCD0__14_carry_i_1_n_0;
  wire LED_BCD0__14_carry_i_2_n_0;
  wire LED_BCD0__14_carry_i_3_n_0;
  wire LED_BCD0__14_carry_i_4_n_0;
  wire LED_BCD0__14_carry_i_5_n_0;
  wire LED_BCD0__14_carry_i_6_n_0;
  wire LED_BCD0__14_carry_i_7_n_0;
  wire LED_BCD0__14_carry_n_0;
  wire LED_BCD0__14_carry_n_1;
  wire LED_BCD0__14_carry_n_2;
  wire LED_BCD0__14_carry_n_3;
  wire LED_BCD0__29_carry__0_i_1_n_0;
  wire LED_BCD0__29_carry__0_i_2_n_0;
  wire LED_BCD0__29_carry__0_i_3_n_0;
  wire LED_BCD0__29_carry__0_n_1;
  wire LED_BCD0__29_carry__0_n_2;
  wire LED_BCD0__29_carry__0_n_3;
  wire LED_BCD0__29_carry_i_1_n_0;
  wire LED_BCD0__29_carry_i_2_n_0;
  wire LED_BCD0__29_carry_i_3_n_0;
  wire LED_BCD0__29_carry_n_0;
  wire LED_BCD0__29_carry_n_1;
  wire LED_BCD0__29_carry_n_2;
  wire LED_BCD0__29_carry_n_3;
  wire LED_BCD0_carry__0_i_1_n_0;
  wire LED_BCD0_carry__0_i_2_n_0;
  wire LED_BCD0_carry__0_i_3_n_0;
  wire LED_BCD0_carry__0_i_4_n_0;
  wire LED_BCD0_carry__0_i_5_n_0;
  wire LED_BCD0_carry__0_i_6_n_0;
  wire LED_BCD0_carry__0_i_7_n_0;
  wire LED_BCD0_carry__0_i_8_n_0;
  wire LED_BCD0_carry__0_n_0;
  wire LED_BCD0_carry__0_n_1;
  wire LED_BCD0_carry__0_n_2;
  wire LED_BCD0_carry__0_n_3;
  wire LED_BCD0_carry__1_i_1_n_0;
  wire LED_BCD0_carry__1_i_2_n_0;
  wire LED_BCD0_carry__1_i_3_n_0;
  wire LED_BCD0_carry__1_i_4_n_0;
  wire LED_BCD0_carry__1_n_0;
  wire LED_BCD0_carry__1_n_2;
  wire LED_BCD0_carry__1_n_3;
  wire LED_BCD0_carry__1_n_5;
  wire LED_BCD0_carry__1_n_6;
  wire LED_BCD0_carry__1_n_7;
  wire LED_BCD0_carry_i_1_n_0;
  wire LED_BCD0_carry_i_2_n_0;
  wire LED_BCD0_carry_i_3_n_0;
  wire LED_BCD0_carry_i_4_n_0;
  wire LED_BCD0_carry_n_0;
  wire LED_BCD0_carry_n_1;
  wire LED_BCD0_carry_n_2;
  wire LED_BCD0_carry_n_3;
  wire [1:1]LED_BCD1;
  wire LED_BCD1__0_carry__0_i_1_n_0;
  wire LED_BCD1__0_carry__0_i_2_n_0;
  wire LED_BCD1__0_carry__0_i_3_n_0;
  wire LED_BCD1__0_carry__0_i_4_n_0;
  wire LED_BCD1__0_carry__0_i_5_n_0;
  wire LED_BCD1__0_carry__0_i_6_n_0;
  wire LED_BCD1__0_carry__0_i_7_n_0;
  wire LED_BCD1__0_carry__0_i_8_n_0;
  wire LED_BCD1__0_carry__0_n_0;
  wire LED_BCD1__0_carry__0_n_1;
  wire LED_BCD1__0_carry__0_n_2;
  wire LED_BCD1__0_carry__0_n_3;
  wire LED_BCD1__0_carry__1_i_1_n_0;
  wire LED_BCD1__0_carry__1_i_2_n_0;
  wire LED_BCD1__0_carry__1_i_3_n_0;
  wire LED_BCD1__0_carry__1_i_4_n_0;
  wire LED_BCD1__0_carry__1_i_5_n_0;
  wire LED_BCD1__0_carry__1_i_6_n_0;
  wire LED_BCD1__0_carry__1_i_7_n_0;
  wire LED_BCD1__0_carry__1_n_0;
  wire LED_BCD1__0_carry__1_n_2;
  wire LED_BCD1__0_carry__1_n_3;
  wire LED_BCD1__0_carry__1_n_5;
  wire LED_BCD1__0_carry__1_n_6;
  wire LED_BCD1__0_carry__1_n_7;
  wire LED_BCD1__0_carry_i_1_n_0;
  wire LED_BCD1__0_carry_i_2_n_0;
  wire LED_BCD1__0_carry_i_3_n_0;
  wire LED_BCD1__0_carry_i_4_n_0;
  wire LED_BCD1__0_carry_i_5_n_0;
  wire LED_BCD1__0_carry_n_0;
  wire LED_BCD1__0_carry_n_1;
  wire LED_BCD1__0_carry_n_2;
  wire LED_BCD1__0_carry_n_3;
  wire LED_BCD1__14_carry__0_i_1_n_0;
  wire LED_BCD1__14_carry__0_i_2_n_0;
  wire LED_BCD1__14_carry__0_i_3_n_0;
  wire LED_BCD1__14_carry__0_i_4_n_0;
  wire LED_BCD1__14_carry__0_i_5_n_0;
  wire LED_BCD1__14_carry__0_n_2;
  wire LED_BCD1__14_carry__0_n_3;
  wire LED_BCD1__14_carry__0_n_5;
  wire LED_BCD1__14_carry__0_n_6;
  wire LED_BCD1__14_carry__0_n_7;
  wire LED_BCD1__14_carry_i_1_n_0;
  wire LED_BCD1__14_carry_i_2_n_0;
  wire LED_BCD1__14_carry_i_3_n_0;
  wire LED_BCD1__14_carry_i_4_n_0;
  wire LED_BCD1__14_carry_i_5_n_0;
  wire LED_BCD1__14_carry_i_6_n_0;
  wire LED_BCD1__14_carry_n_0;
  wire LED_BCD1__14_carry_n_1;
  wire LED_BCD1__14_carry_n_2;
  wire LED_BCD1__14_carry_n_3;
  wire LED_BCD1__14_carry_n_4;
  wire LED_BCD1__14_carry_n_5;
  wire LED_BCD1__14_carry_n_6;
  wire [1:0]LED_activating_counter;
  wire [3:0]an_OBUF;
  wire clk_IBUF_BUFG;
  wire \refresh_counter[0]_i_2_n_0 ;
  wire \refresh_counter_reg[0]_i_1_n_0 ;
  wire \refresh_counter_reg[0]_i_1_n_1 ;
  wire \refresh_counter_reg[0]_i_1_n_2 ;
  wire \refresh_counter_reg[0]_i_1_n_3 ;
  wire \refresh_counter_reg[0]_i_1_n_4 ;
  wire \refresh_counter_reg[0]_i_1_n_5 ;
  wire \refresh_counter_reg[0]_i_1_n_6 ;
  wire \refresh_counter_reg[0]_i_1_n_7 ;
  wire \refresh_counter_reg[12]_i_1_n_0 ;
  wire \refresh_counter_reg[12]_i_1_n_1 ;
  wire \refresh_counter_reg[12]_i_1_n_2 ;
  wire \refresh_counter_reg[12]_i_1_n_3 ;
  wire \refresh_counter_reg[12]_i_1_n_4 ;
  wire \refresh_counter_reg[12]_i_1_n_5 ;
  wire \refresh_counter_reg[12]_i_1_n_6 ;
  wire \refresh_counter_reg[12]_i_1_n_7 ;
  wire \refresh_counter_reg[16]_i_1_n_1 ;
  wire \refresh_counter_reg[16]_i_1_n_2 ;
  wire \refresh_counter_reg[16]_i_1_n_3 ;
  wire \refresh_counter_reg[16]_i_1_n_4 ;
  wire \refresh_counter_reg[16]_i_1_n_5 ;
  wire \refresh_counter_reg[16]_i_1_n_6 ;
  wire \refresh_counter_reg[16]_i_1_n_7 ;
  wire \refresh_counter_reg[4]_i_1_n_0 ;
  wire \refresh_counter_reg[4]_i_1_n_1 ;
  wire \refresh_counter_reg[4]_i_1_n_2 ;
  wire \refresh_counter_reg[4]_i_1_n_3 ;
  wire \refresh_counter_reg[4]_i_1_n_4 ;
  wire \refresh_counter_reg[4]_i_1_n_5 ;
  wire \refresh_counter_reg[4]_i_1_n_6 ;
  wire \refresh_counter_reg[4]_i_1_n_7 ;
  wire \refresh_counter_reg[8]_i_1_n_0 ;
  wire \refresh_counter_reg[8]_i_1_n_1 ;
  wire \refresh_counter_reg[8]_i_1_n_2 ;
  wire \refresh_counter_reg[8]_i_1_n_3 ;
  wire \refresh_counter_reg[8]_i_1_n_4 ;
  wire \refresh_counter_reg[8]_i_1_n_5 ;
  wire \refresh_counter_reg[8]_i_1_n_6 ;
  wire \refresh_counter_reg[8]_i_1_n_7 ;
  wire \refresh_counter_reg_n_0_[0] ;
  wire \refresh_counter_reg_n_0_[10] ;
  wire \refresh_counter_reg_n_0_[11] ;
  wire \refresh_counter_reg_n_0_[12] ;
  wire \refresh_counter_reg_n_0_[13] ;
  wire \refresh_counter_reg_n_0_[14] ;
  wire \refresh_counter_reg_n_0_[15] ;
  wire \refresh_counter_reg_n_0_[16] ;
  wire \refresh_counter_reg_n_0_[17] ;
  wire \refresh_counter_reg_n_0_[1] ;
  wire \refresh_counter_reg_n_0_[2] ;
  wire \refresh_counter_reg_n_0_[3] ;
  wire \refresh_counter_reg_n_0_[4] ;
  wire \refresh_counter_reg_n_0_[5] ;
  wire \refresh_counter_reg_n_0_[6] ;
  wire \refresh_counter_reg_n_0_[7] ;
  wire \refresh_counter_reg_n_0_[8] ;
  wire \refresh_counter_reg_n_0_[9] ;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[6]_inst_i_10_n_0 ;
  wire \seg_OBUF[6]_inst_i_11_n_0 ;
  wire \seg_OBUF[6]_inst_i_12_n_0 ;
  wire \seg_OBUF[6]_inst_i_13_n_0 ;
  wire \seg_OBUF[6]_inst_i_14_n_0 ;
  wire \seg_OBUF[6]_inst_i_15_n_0 ;
  wire \seg_OBUF[6]_inst_i_16_n_0 ;
  wire \seg_OBUF[6]_inst_i_17_n_0 ;
  wire \seg_OBUF[6]_inst_i_18_n_0 ;
  wire \seg_OBUF[6]_inst_i_19_n_0 ;
  wire \seg_OBUF[6]_inst_i_2_n_0 ;
  wire \seg_OBUF[6]_inst_i_3_n_0 ;
  wire \seg_OBUF[6]_inst_i_4_n_0 ;
  wire \seg_OBUF[6]_inst_i_5_n_0 ;
  wire \seg_OBUF[6]_inst_i_6_n_0 ;
  wire \seg_OBUF[6]_inst_i_7_n_0 ;
  wire \seg_OBUF[6]_inst_i_8_n_0 ;
  wire \seg_OBUF[6]_inst_i_9_n_0 ;
  wire [9:0]sw_IBUF;
  wire [3:0]NLW_LED_BCD0__14_carry_O_UNCONNECTED;
  wire [3:0]NLW_LED_BCD0__14_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_LED_BCD0__29_carry_O_UNCONNECTED;
  wire [3:3]NLW_LED_BCD0__29_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_LED_BCD0__29_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_LED_BCD0_carry_O_UNCONNECTED;
  wire [3:0]NLW_LED_BCD0_carry__0_O_UNCONNECTED;
  wire [2:2]NLW_LED_BCD0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_LED_BCD0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_LED_BCD1__0_carry_O_UNCONNECTED;
  wire [3:0]NLW_LED_BCD1__0_carry__0_O_UNCONNECTED;
  wire [2:2]NLW_LED_BCD1__0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_LED_BCD1__0_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_LED_BCD1__14_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_LED_BCD1__14_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_refresh_counter_reg[16]_i_1_CO_UNCONNECTED ;

  CARRY4 LED_BCD0__14_carry
       (.CI(1'b0),
        .CO({LED_BCD0__14_carry_n_0,LED_BCD0__14_carry_n_1,LED_BCD0__14_carry_n_2,LED_BCD0__14_carry_n_3}),
        .CYINIT(1'b0),
        .DI({LED_BCD0__14_carry_i_1_n_0,LED_BCD0__14_carry_i_2_n_0,LED_BCD0__14_carry_i_3_n_0,1'b0}),
        .O(NLW_LED_BCD0__14_carry_O_UNCONNECTED[3:0]),
        .S({LED_BCD0__14_carry_i_4_n_0,LED_BCD0__14_carry_i_5_n_0,LED_BCD0__14_carry_i_6_n_0,LED_BCD0__14_carry_i_7_n_0}));
  CARRY4 LED_BCD0__14_carry__0
       (.CI(LED_BCD0__14_carry_n_0),
        .CO({LED_BCD0__14_carry__0_n_0,LED_BCD0__14_carry__0_n_1,LED_BCD0__14_carry__0_n_2,LED_BCD0__14_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({LED_BCD0__14_carry__0_i_1_n_0,LED_BCD0__14_carry__0_i_2_n_0,LED_BCD0__14_carry__0_i_3_n_0,LED_BCD0__14_carry__0_i_4_n_0}),
        .O(NLW_LED_BCD0__14_carry__0_O_UNCONNECTED[3:0]),
        .S({LED_BCD0__14_carry__0_i_5_n_0,LED_BCD0__14_carry__0_i_6_n_0,LED_BCD0__14_carry__0_i_7_n_0,LED_BCD0__14_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'h45411444)) 
    LED_BCD0__14_carry__0_i_1
       (.I0(LED_BCD0__14_carry__0_i_9_n_0),
        .I1(LED_BCD0_carry__1_n_0),
        .I2(LED_BCD0_carry__1_n_6),
        .I3(LED_BCD0_carry__1_n_7),
        .I4(LED_BCD0_carry__1_n_5),
        .O(LED_BCD0__14_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h0000969C)) 
    LED_BCD0__14_carry__0_i_2
       (.I0(LED_BCD0_carry__1_n_7),
        .I1(LED_BCD0_carry__1_n_5),
        .I2(LED_BCD0_carry__1_n_6),
        .I3(LED_BCD0_carry__1_n_0),
        .I4(LED_BCD1__0_carry__1_i_7_n_0),
        .O(LED_BCD0__14_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hF75D)) 
    LED_BCD0__14_carry__0_i_3
       (.I0(LED_BCD1__14_carry__0_i_1_n_0),
        .I1(LED_BCD0_carry__1_n_7),
        .I2(LED_BCD0_carry__1_n_0),
        .I3(LED_BCD0_carry__1_n_6),
        .O(LED_BCD0__14_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hDFFD)) 
    LED_BCD0__14_carry__0_i_4
       (.I0(sw_IBUF[5]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .I2(LED_BCD0_carry__1_n_0),
        .I3(LED_BCD0_carry__1_n_7),
        .O(LED_BCD0__14_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h54F52A40AB0AD5BF)) 
    LED_BCD0__14_carry__0_i_5
       (.I0(LED_BCD0__14_carry__0_i_9_n_0),
        .I1(LED_BCD0_carry__1_n_7),
        .I2(LED_BCD0_carry__1_n_6),
        .I3(LED_BCD0_carry__1_n_0),
        .I4(LED_BCD0_carry__1_n_5),
        .I5(LED_BCD1__0_carry__1_i_6_n_0),
        .O(LED_BCD0__14_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h65599A669AA66599)) 
    LED_BCD0__14_carry__0_i_6
       (.I0(LED_BCD0__14_carry__0_i_2_n_0),
        .I1(LED_BCD0_carry__1_n_5),
        .I2(LED_BCD0_carry__1_n_7),
        .I3(LED_BCD0_carry__1_n_6),
        .I4(LED_BCD0_carry__1_n_0),
        .I5(LED_BCD0__14_carry__0_i_9_n_0),
        .O(LED_BCD0__14_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h3C69B42DC3964BD2)) 
    LED_BCD0__14_carry__0_i_7
       (.I0(LED_BCD1__14_carry__0_i_1_n_0),
        .I1(LED_BCD0_carry__1_n_7),
        .I2(LED_BCD0_carry__1_n_5),
        .I3(LED_BCD0_carry__1_n_6),
        .I4(LED_BCD0_carry__1_n_0),
        .I5(LED_BCD1__0_carry__1_i_7_n_0),
        .O(LED_BCD0__14_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h1230CF12EDCF30ED)) 
    LED_BCD0__14_carry__0_i_8
       (.I0(sw_IBUF[5]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .I2(sw_IBUF[6]),
        .I3(LED_BCD0_carry__1_n_7),
        .I4(LED_BCD0_carry__1_n_0),
        .I5(LED_BCD0_carry__1_n_6),
        .O(LED_BCD0__14_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    LED_BCD0__14_carry__0_i_9
       (.I0(sw_IBUF[8]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD0__14_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h7500)) 
    LED_BCD0__14_carry_i_1
       (.I0(sw_IBUF[4]),
        .I1(sw_IBUF[3]),
        .I2(LED_BCD1__0_carry_i_5_n_0),
        .I3(LED_BCD0_carry__1_n_5),
        .O(LED_BCD0__14_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    LED_BCD0__14_carry_i_2
       (.I0(LED_BCD0_carry__1_n_6),
        .I1(sw_IBUF[3]),
        .I2(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD0__14_carry_i_2_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    LED_BCD0__14_carry_i_3
       (.I0(LED_BCD0_carry__1_n_7),
        .I1(sw_IBUF[2]),
        .O(LED_BCD0__14_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    LED_BCD0__14_carry_i_4
       (.I0(sw_IBUF[5]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .I2(LED_BCD0__14_carry_i_1_n_0),
        .I3(LED_BCD0_carry__1_n_7),
        .I4(LED_BCD0_carry__1_n_0),
        .O(LED_BCD0__14_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h49B68A75)) 
    LED_BCD0__14_carry_i_5
       (.I0(sw_IBUF[4]),
        .I1(sw_IBUF[3]),
        .I2(LED_BCD1__0_carry_i_5_n_0),
        .I3(LED_BCD0_carry__1_n_5),
        .I4(LED_BCD0_carry__1_n_6),
        .O(LED_BCD0__14_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    LED_BCD0__14_carry_i_6
       (.I0(LED_BCD0__14_carry_i_3_n_0),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .I2(sw_IBUF[3]),
        .I3(LED_BCD0_carry__1_n_6),
        .O(LED_BCD0__14_carry_i_6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    LED_BCD0__14_carry_i_7
       (.I0(LED_BCD0_carry__1_n_7),
        .I1(sw_IBUF[2]),
        .O(LED_BCD0__14_carry_i_7_n_0));
  CARRY4 LED_BCD0__29_carry
       (.CI(1'b0),
        .CO({LED_BCD0__29_carry_n_0,LED_BCD0__29_carry_n_1,LED_BCD0__29_carry_n_2,LED_BCD0__29_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sw_IBUF[6],1'b0,LED_BCD0__29_carry_i_1_n_0,1'b0}),
        .O(NLW_LED_BCD0__29_carry_O_UNCONNECTED[3:0]),
        .S({LED_BCD0__29_carry_i_2_n_0,sw_IBUF[5],LED_BCD0__29_carry_i_3_n_0,sw_IBUF[3]}));
  CARRY4 LED_BCD0__29_carry__0
       (.CI(LED_BCD0__29_carry_n_0),
        .CO({NLW_LED_BCD0__29_carry__0_CO_UNCONNECTED[3],LED_BCD0__29_carry__0_n_1,LED_BCD0__29_carry__0_n_2,LED_BCD0__29_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,sw_IBUF[9:7]}),
        .O(NLW_LED_BCD0__29_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,LED_BCD0__29_carry__0_i_1_n_0,LED_BCD0__29_carry__0_i_2_n_0,LED_BCD0__29_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    LED_BCD0__29_carry__0_i_1
       (.I0(sw_IBUF[8]),
        .I1(sw_IBUF[9]),
        .O(LED_BCD0__29_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    LED_BCD0__29_carry__0_i_2
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[8]),
        .O(LED_BCD0__29_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    LED_BCD0__29_carry__0_i_3
       (.I0(sw_IBUF[6]),
        .I1(sw_IBUF[7]),
        .O(LED_BCD0__29_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    LED_BCD0__29_carry_i_1
       (.I0(sw_IBUF[3]),
        .O(LED_BCD0__29_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    LED_BCD0__29_carry_i_2
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[6]),
        .O(LED_BCD0__29_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    LED_BCD0__29_carry_i_3
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[4]),
        .O(LED_BCD0__29_carry_i_3_n_0));
  CARRY4 LED_BCD0_carry
       (.CI(1'b0),
        .CO({LED_BCD0_carry_n_0,LED_BCD0_carry_n_1,LED_BCD0_carry_n_2,LED_BCD0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({LED_BCD0_carry_i_1_n_0,sw_IBUF[1],sw_IBUF[2],1'b0}),
        .O(NLW_LED_BCD0_carry_O_UNCONNECTED[3:0]),
        .S({LED_BCD0_carry_i_2_n_0,LED_BCD0_carry_i_3_n_0,LED_BCD0_carry_i_4_n_0,sw_IBUF[1]}));
  CARRY4 LED_BCD0_carry__0
       (.CI(LED_BCD0_carry_n_0),
        .CO({LED_BCD0_carry__0_n_0,LED_BCD0_carry__0_n_1,LED_BCD0_carry__0_n_2,LED_BCD0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({LED_BCD0_carry__0_i_1_n_0,LED_BCD0_carry__0_i_2_n_0,LED_BCD0_carry__0_i_3_n_0,LED_BCD0_carry__0_i_4_n_0}),
        .O(NLW_LED_BCD0_carry__0_O_UNCONNECTED[3:0]),
        .S({LED_BCD0_carry__0_i_5_n_0,LED_BCD0_carry__0_i_6_n_0,LED_BCD0_carry__0_i_7_n_0,LED_BCD0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    LED_BCD0_carry__0_i_1
       (.I0(sw_IBUF[8]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LED_BCD0_carry__0_i_2
       (.I0(sw_IBUF[7]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LED_BCD0_carry__0_i_3
       (.I0(sw_IBUF[6]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LED_BCD0_carry__0_i_4
       (.I0(sw_IBUF[5]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD0_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h12)) 
    LED_BCD0_carry__0_i_5
       (.I0(sw_IBUF[8]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .I2(sw_IBUF[6]),
        .O(LED_BCD0_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h12)) 
    LED_BCD0_carry__0_i_6
       (.I0(sw_IBUF[7]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .I2(sw_IBUF[5]),
        .O(LED_BCD0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hD122)) 
    LED_BCD0_carry__0_i_7
       (.I0(sw_IBUF[6]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .I2(sw_IBUF[3]),
        .I3(sw_IBUF[4]),
        .O(LED_BCD0_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h36)) 
    LED_BCD0_carry__0_i_8
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[3]),
        .I2(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD0_carry__0_i_8_n_0));
  CARRY4 LED_BCD0_carry__1
       (.CI(LED_BCD0_carry__0_n_0),
        .CO({LED_BCD0_carry__1_n_0,NLW_LED_BCD0_carry__1_CO_UNCONNECTED[2],LED_BCD0_carry__1_n_2,LED_BCD0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,LED_BCD0_carry__1_i_1_n_0}),
        .O({NLW_LED_BCD0_carry__1_O_UNCONNECTED[3],LED_BCD0_carry__1_n_5,LED_BCD0_carry__1_n_6,LED_BCD0_carry__1_n_7}),
        .S({1'b1,LED_BCD0_carry__1_i_2_n_0,LED_BCD0_carry__1_i_3_n_0,LED_BCD0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    LED_BCD0_carry__1_i_1
       (.I0(LED_BCD1__0_carry__1_i_5_n_0),
        .I1(sw_IBUF[9]),
        .O(LED_BCD0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    LED_BCD0_carry__1_i_2
       (.I0(LED_BCD1__0_carry__1_i_5_n_0),
        .I1(sw_IBUF[9]),
        .O(LED_BCD0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LED_BCD0_carry__1_i_3
       (.I0(sw_IBUF[8]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    LED_BCD0_carry__1_i_4
       (.I0(LED_BCD1__0_carry__1_i_6_n_0),
        .I1(LED_BCD1__0_carry__1_i_7_n_0),
        .O(LED_BCD0_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h8A)) 
    LED_BCD0_carry_i_1
       (.I0(sw_IBUF[4]),
        .I1(sw_IBUF[3]),
        .I2(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h758A)) 
    LED_BCD0_carry_i_2
       (.I0(sw_IBUF[4]),
        .I1(sw_IBUF[3]),
        .I2(LED_BCD1__0_carry_i_5_n_0),
        .I3(sw_IBUF[2]),
        .O(LED_BCD0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    LED_BCD0_carry_i_3
       (.I0(sw_IBUF[3]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .I2(sw_IBUF[1]),
        .O(LED_BCD0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    LED_BCD0_carry_i_4
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[0]),
        .O(LED_BCD0_carry_i_4_n_0));
  CARRY4 LED_BCD1__0_carry
       (.CI(1'b0),
        .CO({LED_BCD1__0_carry_n_0,LED_BCD1__0_carry_n_1,LED_BCD1__0_carry_n_2,LED_BCD1__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({LED_BCD1__0_carry_i_1_n_0,sw_IBUF[1],sw_IBUF[2],1'b0}),
        .O(NLW_LED_BCD1__0_carry_O_UNCONNECTED[3:0]),
        .S({LED_BCD1__0_carry_i_2_n_0,LED_BCD1__0_carry_i_3_n_0,LED_BCD1__0_carry_i_4_n_0,sw_IBUF[1]}));
  CARRY4 LED_BCD1__0_carry__0
       (.CI(LED_BCD1__0_carry_n_0),
        .CO({LED_BCD1__0_carry__0_n_0,LED_BCD1__0_carry__0_n_1,LED_BCD1__0_carry__0_n_2,LED_BCD1__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({LED_BCD1__0_carry__0_i_1_n_0,LED_BCD1__0_carry__0_i_2_n_0,LED_BCD1__0_carry__0_i_3_n_0,LED_BCD1__0_carry__0_i_4_n_0}),
        .O(NLW_LED_BCD1__0_carry__0_O_UNCONNECTED[3:0]),
        .S({LED_BCD1__0_carry__0_i_5_n_0,LED_BCD1__0_carry__0_i_6_n_0,LED_BCD1__0_carry__0_i_7_n_0,LED_BCD1__0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    LED_BCD1__0_carry__0_i_1
       (.I0(sw_IBUF[8]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD1__0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LED_BCD1__0_carry__0_i_2
       (.I0(sw_IBUF[7]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD1__0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LED_BCD1__0_carry__0_i_3
       (.I0(sw_IBUF[6]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD1__0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LED_BCD1__0_carry__0_i_4
       (.I0(sw_IBUF[5]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD1__0_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h12)) 
    LED_BCD1__0_carry__0_i_5
       (.I0(sw_IBUF[8]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .I2(sw_IBUF[6]),
        .O(LED_BCD1__0_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h12)) 
    LED_BCD1__0_carry__0_i_6
       (.I0(sw_IBUF[7]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .I2(sw_IBUF[5]),
        .O(LED_BCD1__0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hD122)) 
    LED_BCD1__0_carry__0_i_7
       (.I0(sw_IBUF[6]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .I2(sw_IBUF[3]),
        .I3(sw_IBUF[4]),
        .O(LED_BCD1__0_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h36)) 
    LED_BCD1__0_carry__0_i_8
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[3]),
        .I2(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD1__0_carry__0_i_8_n_0));
  CARRY4 LED_BCD1__0_carry__1
       (.CI(LED_BCD1__0_carry__0_n_0),
        .CO({LED_BCD1__0_carry__1_n_0,NLW_LED_BCD1__0_carry__1_CO_UNCONNECTED[2],LED_BCD1__0_carry__1_n_2,LED_BCD1__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,LED_BCD1__0_carry__1_i_1_n_0}),
        .O({NLW_LED_BCD1__0_carry__1_O_UNCONNECTED[3],LED_BCD1__0_carry__1_n_5,LED_BCD1__0_carry__1_n_6,LED_BCD1__0_carry__1_n_7}),
        .S({1'b1,LED_BCD1__0_carry__1_i_2_n_0,LED_BCD1__0_carry__1_i_3_n_0,LED_BCD1__0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    LED_BCD1__0_carry__1_i_1
       (.I0(LED_BCD1__0_carry__1_i_5_n_0),
        .I1(sw_IBUF[9]),
        .O(LED_BCD1__0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    LED_BCD1__0_carry__1_i_2
       (.I0(LED_BCD1__0_carry__1_i_5_n_0),
        .I1(sw_IBUF[9]),
        .O(LED_BCD1__0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LED_BCD1__0_carry__1_i_3
       (.I0(sw_IBUF[8]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD1__0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    LED_BCD1__0_carry__1_i_4
       (.I0(LED_BCD1__0_carry__1_i_6_n_0),
        .I1(LED_BCD1__0_carry__1_i_7_n_0),
        .O(LED_BCD1__0_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h1FFFFFFFFFFFFFFF)) 
    LED_BCD1__0_carry__1_i_5
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[4]),
        .I2(sw_IBUF[6]),
        .I3(sw_IBUF[7]),
        .I4(sw_IBUF[5]),
        .I5(sw_IBUF[8]),
        .O(LED_BCD1__0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    LED_BCD1__0_carry__1_i_6
       (.I0(LED_BCD1__0_carry__1_i_5_n_0),
        .I1(sw_IBUF[9]),
        .O(LED_BCD1__0_carry__1_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    LED_BCD1__0_carry__1_i_7
       (.I0(sw_IBUF[7]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD1__0_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'h8A)) 
    LED_BCD1__0_carry_i_1
       (.I0(sw_IBUF[4]),
        .I1(sw_IBUF[3]),
        .I2(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD1__0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h758A)) 
    LED_BCD1__0_carry_i_2
       (.I0(sw_IBUF[4]),
        .I1(sw_IBUF[3]),
        .I2(LED_BCD1__0_carry_i_5_n_0),
        .I3(sw_IBUF[2]),
        .O(LED_BCD1__0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    LED_BCD1__0_carry_i_3
       (.I0(sw_IBUF[3]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .I2(sw_IBUF[1]),
        .O(LED_BCD1__0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    LED_BCD1__0_carry_i_4
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[0]),
        .O(LED_BCD1__0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LED_BCD1__0_carry_i_5
       (.I0(sw_IBUF[9]),
        .I1(LED_BCD1__0_carry__1_i_5_n_0),
        .O(LED_BCD1__0_carry_i_5_n_0));
  CARRY4 LED_BCD1__14_carry
       (.CI(1'b0),
        .CO({LED_BCD1__14_carry_n_0,LED_BCD1__14_carry_n_1,LED_BCD1__14_carry_n_2,LED_BCD1__14_carry_n_3}),
        .CYINIT(1'b1),
        .DI({LED_BCD1__14_carry_i_1_n_0,LED_BCD1__14_carry_i_2_n_0,sw_IBUF[2],1'b1}),
        .O({LED_BCD1__14_carry_n_4,LED_BCD1__14_carry_n_5,LED_BCD1__14_carry_n_6,LED_BCD1}),
        .S({LED_BCD1__14_carry_i_3_n_0,LED_BCD1__14_carry_i_4_n_0,LED_BCD1__14_carry_i_5_n_0,LED_BCD1__14_carry_i_6_n_0}));
  CARRY4 LED_BCD1__14_carry__0
       (.CI(LED_BCD1__14_carry_n_0),
        .CO({NLW_LED_BCD1__14_carry__0_CO_UNCONNECTED[3:2],LED_BCD1__14_carry__0_n_2,LED_BCD1__14_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,LED_BCD1__14_carry__0_i_1_n_0,LED_BCD1__14_carry__0_i_2_n_0}),
        .O({NLW_LED_BCD1__14_carry__0_O_UNCONNECTED[3],LED_BCD1__14_carry__0_n_5,LED_BCD1__14_carry__0_n_6,LED_BCD1__14_carry__0_n_7}),
        .S({1'b0,LED_BCD1__14_carry__0_i_3_n_0,LED_BCD1__14_carry__0_i_4_n_0,LED_BCD1__14_carry__0_i_5_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    LED_BCD1__14_carry__0_i_1
       (.I0(sw_IBUF[6]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD1__14_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LED_BCD1__14_carry__0_i_2
       (.I0(sw_IBUF[5]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD1__14_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h966996A5)) 
    LED_BCD1__14_carry__0_i_3
       (.I0(LED_BCD1__0_carry__1_i_7_n_0),
        .I1(LED_BCD1__0_carry__1_n_7),
        .I2(LED_BCD1__0_carry__1_n_5),
        .I3(LED_BCD1__0_carry__1_n_6),
        .I4(LED_BCD1__0_carry__1_n_0),
        .O(LED_BCD1__14_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hA659)) 
    LED_BCD1__14_carry__0_i_4
       (.I0(LED_BCD1__14_carry__0_i_1_n_0),
        .I1(LED_BCD1__0_carry__1_n_7),
        .I2(LED_BCD1__0_carry__1_n_0),
        .I3(LED_BCD1__0_carry__1_n_6),
        .O(LED_BCD1__14_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    LED_BCD1__14_carry__0_i_5
       (.I0(sw_IBUF[5]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .I2(LED_BCD1__0_carry__1_n_0),
        .I3(LED_BCD1__0_carry__1_n_7),
        .O(LED_BCD1__14_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h8A)) 
    LED_BCD1__14_carry_i_1
       (.I0(sw_IBUF[4]),
        .I1(sw_IBUF[3]),
        .I2(LED_BCD1__0_carry_i_5_n_0),
        .O(LED_BCD1__14_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    LED_BCD1__14_carry_i_2
       (.I0(LED_BCD1__0_carry__1_n_6),
        .O(LED_BCD1__14_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h8A75)) 
    LED_BCD1__14_carry_i_3
       (.I0(sw_IBUF[4]),
        .I1(sw_IBUF[3]),
        .I2(LED_BCD1__0_carry_i_5_n_0),
        .I3(LED_BCD1__0_carry__1_n_5),
        .O(LED_BCD1__14_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    LED_BCD1__14_carry_i_4
       (.I0(sw_IBUF[3]),
        .I1(LED_BCD1__0_carry_i_5_n_0),
        .I2(LED_BCD1__0_carry__1_n_6),
        .O(LED_BCD1__14_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    LED_BCD1__14_carry_i_5
       (.I0(sw_IBUF[2]),
        .I1(LED_BCD1__0_carry__1_n_7),
        .O(LED_BCD1__14_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    LED_BCD1__14_carry_i_6
       (.I0(sw_IBUF[1]),
        .O(LED_BCD1__14_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(LED_activating_counter[1]),
        .I1(LED_activating_counter[0]),
        .O(an_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(LED_activating_counter[0]),
        .I1(LED_activating_counter[1]),
        .O(an_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(LED_activating_counter[1]),
        .I1(LED_activating_counter[0]),
        .O(an_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(LED_activating_counter[0]),
        .I1(LED_activating_counter[1]),
        .O(an_OBUF[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \refresh_counter[0]_i_2 
       (.I0(\refresh_counter_reg_n_0_[0] ),
        .O(\refresh_counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[0]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \refresh_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\refresh_counter_reg[0]_i_1_n_0 ,\refresh_counter_reg[0]_i_1_n_1 ,\refresh_counter_reg[0]_i_1_n_2 ,\refresh_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\refresh_counter_reg[0]_i_1_n_4 ,\refresh_counter_reg[0]_i_1_n_5 ,\refresh_counter_reg[0]_i_1_n_6 ,\refresh_counter_reg[0]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[3] ,\refresh_counter_reg_n_0_[2] ,\refresh_counter_reg_n_0_[1] ,\refresh_counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[8]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[8]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[12]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \refresh_counter_reg[12]_i_1 
       (.CI(\refresh_counter_reg[8]_i_1_n_0 ),
        .CO({\refresh_counter_reg[12]_i_1_n_0 ,\refresh_counter_reg[12]_i_1_n_1 ,\refresh_counter_reg[12]_i_1_n_2 ,\refresh_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[12]_i_1_n_4 ,\refresh_counter_reg[12]_i_1_n_5 ,\refresh_counter_reg[12]_i_1_n_6 ,\refresh_counter_reg[12]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[15] ,\refresh_counter_reg_n_0_[14] ,\refresh_counter_reg_n_0_[13] ,\refresh_counter_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[12]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[12]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[12]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[16]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[16] ),
        .R(1'b0));
  CARRY4 \refresh_counter_reg[16]_i_1 
       (.CI(\refresh_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_refresh_counter_reg[16]_i_1_CO_UNCONNECTED [3],\refresh_counter_reg[16]_i_1_n_1 ,\refresh_counter_reg[16]_i_1_n_2 ,\refresh_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[16]_i_1_n_4 ,\refresh_counter_reg[16]_i_1_n_5 ,\refresh_counter_reg[16]_i_1_n_6 ,\refresh_counter_reg[16]_i_1_n_7 }),
        .S({LED_activating_counter,\refresh_counter_reg_n_0_[17] ,\refresh_counter_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[16]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[16]_i_1_n_5 ),
        .Q(LED_activating_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[16]_i_1_n_4 ),
        .Q(LED_activating_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[0]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[0]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[0]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[4]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \refresh_counter_reg[4]_i_1 
       (.CI(\refresh_counter_reg[0]_i_1_n_0 ),
        .CO({\refresh_counter_reg[4]_i_1_n_0 ,\refresh_counter_reg[4]_i_1_n_1 ,\refresh_counter_reg[4]_i_1_n_2 ,\refresh_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[4]_i_1_n_4 ,\refresh_counter_reg[4]_i_1_n_5 ,\refresh_counter_reg[4]_i_1_n_6 ,\refresh_counter_reg[4]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[7] ,\refresh_counter_reg_n_0_[6] ,\refresh_counter_reg_n_0_[5] ,\refresh_counter_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[4]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[4]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[4]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[8]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \refresh_counter_reg[8]_i_1 
       (.CI(\refresh_counter_reg[4]_i_1_n_0 ),
        .CO({\refresh_counter_reg[8]_i_1_n_0 ,\refresh_counter_reg[8]_i_1_n_1 ,\refresh_counter_reg[8]_i_1_n_2 ,\refresh_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[8]_i_1_n_4 ,\refresh_counter_reg[8]_i_1_n_5 ,\refresh_counter_reg[8]_i_1_n_6 ,\refresh_counter_reg[8]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[11] ,\refresh_counter_reg_n_0_[10] ,\refresh_counter_reg_n_0_[9] ,\refresh_counter_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\refresh_counter_reg[8]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBA66)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_5_n_0 ),
        .O(seg_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00E8)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_2_n_0 ),
        .O(seg_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h20AB)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_2_n_0 ),
        .O(seg_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1401)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_4_n_0 ),
        .O(seg_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_2_n_0 ),
        .O(seg_OBUF[4]));
  LUT4 #(
    .INIT(16'h0014)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_2_n_0 ),
        .O(seg_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0041)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_5_n_0 ),
        .O(seg_OBUF[6]));
  LUT6 #(
    .INIT(64'h011F80F800FA0F00)) 
    \seg_OBUF[6]_inst_i_10 
       (.I0(LED_BCD1__14_carry_n_5),
        .I1(LED_BCD1__14_carry_n_6),
        .I2(LED_BCD1__14_carry_n_4),
        .I3(LED_BCD1__14_carry__0_n_6),
        .I4(LED_BCD1__14_carry__0_n_7),
        .I5(LED_BCD1__14_carry__0_n_5),
        .O(\seg_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF04FFFFFFFFFFFF)) 
    \seg_OBUF[6]_inst_i_11 
       (.I0(LED_BCD1__0_carry__1_i_6_n_0),
        .I1(LED_BCD0_carry__1_n_5),
        .I2(LED_BCD0_carry__1_n_0),
        .I3(LED_BCD0__14_carry__0_n_0),
        .I4(LED_BCD0_carry__1_n_6),
        .I5(LED_BCD0_carry__1_n_7),
        .O(\seg_OBUF[6]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h030043F4D03DFF3F)) 
    \seg_OBUF[6]_inst_i_12 
       (.I0(LED_BCD1),
        .I1(\seg_OBUF[6]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_10_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_18_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_15_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_17_n_0 ),
        .O(\seg_OBUF[6]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0040004)) 
    \seg_OBUF[6]_inst_i_13 
       (.I0(LED_BCD0__29_carry__0_n_1),
        .I1(sw_IBUF[9]),
        .I2(LED_activating_counter[1]),
        .I3(LED_activating_counter[0]),
        .I4(sw_IBUF[0]),
        .O(\seg_OBUF[6]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAFABFAA)) 
    \seg_OBUF[6]_inst_i_14 
       (.I0(LED_BCD0__14_carry__0_n_0),
        .I1(LED_BCD0_carry__1_n_7),
        .I2(LED_BCD0_carry__1_n_6),
        .I3(LED_BCD0_carry__1_n_0),
        .I4(LED_BCD0_carry__1_n_5),
        .I5(LED_BCD1__0_carry__1_i_6_n_0),
        .O(\seg_OBUF[6]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hC538E13A211E281E)) 
    \seg_OBUF[6]_inst_i_15 
       (.I0(LED_BCD1__14_carry__0_n_5),
        .I1(LED_BCD1__14_carry__0_n_7),
        .I2(LED_BCD1__14_carry__0_n_6),
        .I3(LED_BCD1__14_carry_n_4),
        .I4(LED_BCD1__14_carry_n_6),
        .I5(LED_BCD1__14_carry_n_5),
        .O(\seg_OBUF[6]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h4B4B4B4B4B0B4F4B)) 
    \seg_OBUF[6]_inst_i_16 
       (.I0(LED_BCD0__14_carry__0_n_0),
        .I1(LED_BCD0_carry__1_n_7),
        .I2(LED_BCD0_carry__1_n_6),
        .I3(LED_BCD0_carry__1_n_0),
        .I4(LED_BCD0_carry__1_n_5),
        .I5(LED_BCD1__0_carry__1_i_6_n_0),
        .O(\seg_OBUF[6]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h79988778795AAA5A)) 
    \seg_OBUF[6]_inst_i_17 
       (.I0(LED_BCD1__14_carry_n_5),
        .I1(LED_BCD1__14_carry_n_6),
        .I2(LED_BCD1__14_carry_n_4),
        .I3(LED_BCD1__14_carry__0_n_6),
        .I4(LED_BCD1__14_carry__0_n_7),
        .I5(LED_BCD1__14_carry__0_n_5),
        .O(\seg_OBUF[6]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6666666667555555)) 
    \seg_OBUF[6]_inst_i_18 
       (.I0(LED_BCD1__14_carry_n_5),
        .I1(LED_BCD1__14_carry_n_6),
        .I2(LED_BCD1__14_carry_n_4),
        .I3(LED_BCD1__14_carry__0_n_6),
        .I4(LED_BCD1__14_carry__0_n_7),
        .I5(LED_BCD1__14_carry__0_n_5),
        .O(\seg_OBUF[6]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCD333333)) 
    \seg_OBUF[6]_inst_i_19 
       (.I0(LED_BCD1__14_carry_n_5),
        .I1(LED_BCD1__14_carry_n_6),
        .I2(LED_BCD1__14_carry_n_4),
        .I3(LED_BCD1__14_carry__0_n_6),
        .I4(LED_BCD1__14_carry__0_n_7),
        .I5(LED_BCD1__14_carry__0_n_5),
        .O(\seg_OBUF[6]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00FF3C3CAAAA0000)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(\seg_OBUF[6]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_7_n_0 ),
        .I2(LED_BCD0_carry__1_n_0),
        .I3(\seg_OBUF[6]_inst_i_8_n_0 ),
        .I4(LED_activating_counter[1]),
        .I5(LED_activating_counter[0]),
        .O(\seg_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h530F53FF53FF530F)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(\seg_OBUF[6]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_10_n_0 ),
        .I2(LED_activating_counter[0]),
        .I3(LED_activating_counter[1]),
        .I4(\seg_OBUF[6]_inst_i_11_n_0 ),
        .I5(LED_BCD0_carry__1_n_5),
        .O(\seg_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFDCCCDCCCDCCFDC)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(\seg_OBUF[6]_inst_i_12_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_13_n_0 ),
        .I2(LED_activating_counter[1]),
        .I3(LED_activating_counter[0]),
        .I4(\seg_OBUF[6]_inst_i_14_n_0 ),
        .I5(LED_BCD0_carry__1_n_7),
        .O(\seg_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF00F3333AAAA0000)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(\seg_OBUF[6]_inst_i_15_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_16_n_0 ),
        .I2(LED_BCD1),
        .I3(\seg_OBUF[6]_inst_i_12_n_0 ),
        .I4(LED_activating_counter[1]),
        .I5(LED_activating_counter[0]),
        .O(\seg_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4A084A084A080AA8)) 
    \seg_OBUF[6]_inst_i_6 
       (.I0(LED_BCD1__14_carry__0_n_6),
        .I1(LED_BCD1__14_carry__0_n_5),
        .I2(LED_BCD1__14_carry__0_n_7),
        .I3(LED_BCD1__14_carry_n_4),
        .I4(LED_BCD1__14_carry_n_6),
        .I5(LED_BCD1__14_carry_n_5),
        .O(\seg_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0808000008000000)) 
    \seg_OBUF[6]_inst_i_7 
       (.I0(LED_BCD0_carry__1_n_7),
        .I1(LED_BCD0_carry__1_n_6),
        .I2(LED_BCD0__14_carry__0_n_0),
        .I3(LED_BCD0_carry__1_n_0),
        .I4(LED_BCD0_carry__1_n_5),
        .I5(LED_BCD1__0_carry__1_i_6_n_0),
        .O(\seg_OBUF[6]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6ED6E7BE4FF42FF2)) 
    \seg_OBUF[6]_inst_i_8 
       (.I0(\seg_OBUF[6]_inst_i_17_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_15_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_18_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_10_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_19_n_0 ),
        .I5(LED_BCD1),
        .O(\seg_OBUF[6]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h98992732C98C3373)) 
    \seg_OBUF[6]_inst_i_9 
       (.I0(LED_BCD1),
        .I1(\seg_OBUF[6]_inst_i_19_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_10_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_18_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_15_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_17_n_0 ),
        .O(\seg_OBUF[6]_inst_i_9_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
