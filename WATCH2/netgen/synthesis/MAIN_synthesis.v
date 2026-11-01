////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: MAIN_synthesis.v
// /___/   /\     Timestamp: Fri Jun 19 17:37:32 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim MAIN.ngc MAIN_synthesis.v 
// Device	: xc3s400-5-pq208
// Input file	: MAIN.ngc
// Output file	: G:\FPGA\WATCH2\netgen\synthesis\MAIN_synthesis.v
// # of Modules	: 1
// Design Name	: MAIN
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module MAIN (
  CLK, RESET, H1, H2, M1, M2, S1, S2, X0, X1, X2, DIN0, DIN1, SEL
);
  input CLK;
  input RESET;
  output [3 : 0] H1;
  output [3 : 0] H2;
  output [3 : 0] M1;
  output [3 : 0] M2;
  output [3 : 0] S1;
  output [3 : 0] S2;
  output [3 : 0] X0;
  output [3 : 0] X1;
  output [3 : 0] X2;
  input [3 : 0] DIN0;
  input [3 : 0] DIN1;
  input [1 : 0] SEL;
  wire CLK_BUFGP_1;
  wire CLK_inv;
  wire DIN0_0_IBUF_7;
  wire DIN0_1_IBUF_8;
  wire DIN0_2_IBUF_9;
  wire DIN0_3_IBUF_10;
  wire DIN1_0_IBUF_15;
  wire DIN1_1_IBUF_16;
  wire DIN1_3_IBUF_17;
  wire H1_0_OBUF_22;
  wire H1_1_OBUF_23;
  wire H2_1_OBUF_28;
  wire H2_2_OBUF_29;
  wire H2_3_OBUF_30;
  wire M1_0_OBUF_35;
  wire M1_1_OBUF_36;
  wire M1_2_OBUF_37;
  wire M2_1_OBUF_42;
  wire M2_2_OBUF_43;
  wire M2_3_OBUF_44;
  wire Mcount_msec;
  wire Mcount_msec1;
  wire Mcount_msec2;
  wire Mcount_msec3;
  wire Mcount_msec4;
  wire Mcount_msec5;
  wire Mcount_msec6;
  wire Mcount_msec7;
  wire Mcount_msec8;
  wire Mcount_msec9;
  wire \Mmult_min_mult0000_Madd_lut[3] ;
  wire \Mmult_min_mult0000_Madd_lut[5] ;
  wire N0;
  wire N01;
  wire N1;
  wire N10;
  wire N101;
  wire N102;
  wire N103;
  wire N1031;
  wire N105;
  wire N107;
  wire N109;
  wire N11;
  wire N110;
  wire N111;
  wire N112;
  wire N113;
  wire N114;
  wire N115;
  wire N116;
  wire N117;
  wire N118;
  wire N119;
  wire N12;
  wire N120;
  wire N121;
  wire N122;
  wire N123;
  wire N124;
  wire N125;
  wire N126;
  wire N127;
  wire N128;
  wire N129;
  wire N130;
  wire N131;
  wire N132;
  wire N133;
  wire N134;
  wire N135;
  wire N136;
  wire N137;
  wire N14;
  wire N181;
  wire N2;
  wire N20;
  wire N22;
  wire N24;
  wire N26;
  wire N27;
  wire N29;
  wire N3;
  wire N34;
  wire N341;
  wire N36;
  wire N37;
  wire N38;
  wire N4;
  wire N42;
  wire N45;
  wire N47;
  wire N48;
  wire N51;
  wire N52;
  wire N54;
  wire N56;
  wire N58;
  wire N6;
  wire N60;
  wire N61;
  wire N63;
  wire N67;
  wire N691;
  wire N73;
  wire N74;
  wire N75;
  wire N77;
  wire N79;
  wire N80;
  wire N81;
  wire N87;
  wire N89;
  wire N91;
  wire N93;
  wire N95;
  wire N97;
  wire N98;
  wire N99;
  wire RESET_IBUF_187;
  wire S1_0_OBUF_192;
  wire S1_1_OBUF_193;
  wire S1_2_OBUF_194;
  wire S1_3_OBUF_195;
  wire S2_1_OBUF_200;
  wire S2_2_OBUF_201;
  wire S2_3_OBUF_202;
  wire SEL_0_IBUF_205;
  wire SEL_1_IBUF_206;
  wire X0_1_OBUF_211;
  wire X0_2_OBUF_212;
  wire X0_3_OBUF_213;
  wire X1_0_OBUF_218;
  wire X1_1_OBUF_219;
  wire X1_2_OBUF_220;
  wire X1_3_OBUF_221;
  wire X2_0_OBUF_226;
  wire X2_1_OBUF_227;
  wire X2_2_OBUF_228;
  wire X2_3_OBUF_229;
  wire \hour_mux0001<0>121_236 ;
  wire \hour_mux0001<0>134_237 ;
  wire \hour_mux0001<0>15_238 ;
  wire hour_not0002;
  wire \min_mux0001<0>40_252 ;
  wire min_not0002;
  wire \msec1<0>119_259 ;
  wire \msec1<0>12 ;
  wire \msec1<0>121_261 ;
  wire \msec1<0>122_262 ;
  wire \msec1<0>50_263 ;
  wire \msec1<1>_SW2 ;
  wire \msec1<1>_SW21_265 ;
  wire \msec2<0>110_266 ;
  wire \msec2<0>14 ;
  wire \msec2<0>141_268 ;
  wire \msec2<0>200_269 ;
  wire \msec2<0>200_SW0 ;
  wire \msec2<0>200_SW01_271 ;
  wire \msec2<0>225_272 ;
  wire \msec2<0>49 ;
  wire \msec2<0>491_274 ;
  wire \msec2<0>54_275 ;
  wire \msec2<0>7 ;
  wire \msec2<0>71_277 ;
  wire \msec2<1>51_278 ;
  wire \msec2<1>57_279 ;
  wire \msec2<1>66_280 ;
  wire msec_cmp_ge0000;
  wire msec_cmp_ge0000_inv;
  wire sec_not0002;
  wire [3 : 0] Madd_hour_share0000_lut;
  wire [2 : 1] Madd_sec_add0000_lut;
  wire [8 : 0] Mcount_msec_cy;
  wire [9 : 0] Mcount_msec_lut;
  wire [2 : 2] Msub_min2_lut;
  wire [8 : 2] Msub_msect0_cy;
  wire [9 : 2] Msub_msect0_lut;
  wire [2 : 2] Msub_sec2_lut;
  wire [4 : 0] hour;
  wire [4 : 0] hour_mux0001;
  wire [4 : 4] hour_mux0002;
  wire [5 : 0] min;
  wire [5 : 0] min_mux0001;
  wire [9 : 0] msec;
  wire [9 : 2] msect0;
  wire [5 : 0] sec;
  wire [4 : 4] sec_add0000;
  wire [5 : 0] sec_mux0001;
  GND   XST_GND (
    .G(S1_3_OBUF_195)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDCE_1   sec_0 (
    .C(CLK_BUFGP_1),
    .CE(sec_not0002),
    .CLR(RESET_IBUF_187),
    .D(sec_mux0001[5]),
    .Q(sec[0])
  );
  FDCE_1   sec_1 (
    .C(CLK_BUFGP_1),
    .CE(sec_not0002),
    .CLR(RESET_IBUF_187),
    .D(sec_mux0001[4]),
    .Q(sec[1])
  );
  FDCE_1   sec_2 (
    .C(CLK_BUFGP_1),
    .CE(sec_not0002),
    .CLR(RESET_IBUF_187),
    .D(sec_mux0001[3]),
    .Q(sec[2])
  );
  FDCE_1   sec_3 (
    .C(CLK_BUFGP_1),
    .CE(sec_not0002),
    .CLR(RESET_IBUF_187),
    .D(sec_mux0001[2]),
    .Q(sec[3])
  );
  FDCE_1   sec_4 (
    .C(CLK_BUFGP_1),
    .CE(sec_not0002),
    .CLR(RESET_IBUF_187),
    .D(sec_mux0001[1]),
    .Q(sec[4])
  );
  FDCE_1   sec_5 (
    .C(CLK_BUFGP_1),
    .CE(sec_not0002),
    .CLR(RESET_IBUF_187),
    .D(sec_mux0001[0]),
    .Q(sec[5])
  );
  FDCE_1   hour_0 (
    .C(CLK_BUFGP_1),
    .CE(hour_not0002),
    .CLR(RESET_IBUF_187),
    .D(hour_mux0001[4]),
    .Q(hour[0])
  );
  FDCE_1   hour_1 (
    .C(CLK_BUFGP_1),
    .CE(hour_not0002),
    .CLR(RESET_IBUF_187),
    .D(hour_mux0001[3]),
    .Q(hour[1])
  );
  FDCE_1   hour_2 (
    .C(CLK_BUFGP_1),
    .CE(hour_not0002),
    .CLR(RESET_IBUF_187),
    .D(hour_mux0001[2]),
    .Q(hour[2])
  );
  FDCE_1   hour_3 (
    .C(CLK_BUFGP_1),
    .CE(hour_not0002),
    .CLR(RESET_IBUF_187),
    .D(hour_mux0001[1]),
    .Q(hour[3])
  );
  FDCE_1   hour_4 (
    .C(CLK_BUFGP_1),
    .CE(hour_not0002),
    .CLR(RESET_IBUF_187),
    .D(hour_mux0001[0]),
    .Q(hour[4])
  );
  FDCE_1   min_0 (
    .C(CLK_BUFGP_1),
    .CE(min_not0002),
    .CLR(RESET_IBUF_187),
    .D(min_mux0001[5]),
    .Q(min[0])
  );
  FDCE_1   min_1 (
    .C(CLK_BUFGP_1),
    .CE(min_not0002),
    .CLR(RESET_IBUF_187),
    .D(min_mux0001[4]),
    .Q(min[1])
  );
  FDCE_1   min_2 (
    .C(CLK_BUFGP_1),
    .CE(min_not0002),
    .CLR(RESET_IBUF_187),
    .D(min_mux0001[3]),
    .Q(min[2])
  );
  FDCE_1   min_3 (
    .C(CLK_BUFGP_1),
    .CE(min_not0002),
    .CLR(RESET_IBUF_187),
    .D(min_mux0001[2]),
    .Q(min[3])
  );
  FDCE_1   min_4 (
    .C(CLK_BUFGP_1),
    .CE(min_not0002),
    .CLR(RESET_IBUF_187),
    .D(min_mux0001[1]),
    .Q(min[4])
  );
  FDCE_1   min_5 (
    .C(CLK_BUFGP_1),
    .CE(min_not0002),
    .CLR(RESET_IBUF_187),
    .D(min_mux0001[0]),
    .Q(min[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mcount_msec_lut<0>  (
    .I0(msec_cmp_ge0000),
    .I1(msec[0]),
    .I2(S1_3_OBUF_195),
    .O(Mcount_msec_lut[0])
  );
  MUXCY   \Mcount_msec_cy<0>  (
    .CI(msec_cmp_ge0000_inv),
    .DI(S1_3_OBUF_195),
    .S(Mcount_msec_lut[0]),
    .O(Mcount_msec_cy[0])
  );
  XORCY   \Mcount_msec_xor<0>  (
    .CI(msec_cmp_ge0000_inv),
    .LI(Mcount_msec_lut[0]),
    .O(Mcount_msec)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mcount_msec_lut<1>  (
    .I0(msec_cmp_ge0000),
    .I1(msec[1]),
    .I2(S1_3_OBUF_195),
    .O(Mcount_msec_lut[1])
  );
  MUXCY   \Mcount_msec_cy<1>  (
    .CI(Mcount_msec_cy[0]),
    .DI(S1_3_OBUF_195),
    .S(Mcount_msec_lut[1]),
    .O(Mcount_msec_cy[1])
  );
  XORCY   \Mcount_msec_xor<1>  (
    .CI(Mcount_msec_cy[0]),
    .LI(Mcount_msec_lut[1]),
    .O(Mcount_msec1)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mcount_msec_lut<2>  (
    .I0(msec_cmp_ge0000),
    .I1(msec[2]),
    .I2(S1_3_OBUF_195),
    .O(Mcount_msec_lut[2])
  );
  MUXCY   \Mcount_msec_cy<2>  (
    .CI(Mcount_msec_cy[1]),
    .DI(S1_3_OBUF_195),
    .S(Mcount_msec_lut[2]),
    .O(Mcount_msec_cy[2])
  );
  XORCY   \Mcount_msec_xor<2>  (
    .CI(Mcount_msec_cy[1]),
    .LI(Mcount_msec_lut[2]),
    .O(Mcount_msec2)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mcount_msec_lut<3>  (
    .I0(msec_cmp_ge0000),
    .I1(msec[3]),
    .I2(S1_3_OBUF_195),
    .O(Mcount_msec_lut[3])
  );
  MUXCY   \Mcount_msec_cy<3>  (
    .CI(Mcount_msec_cy[2]),
    .DI(S1_3_OBUF_195),
    .S(Mcount_msec_lut[3]),
    .O(Mcount_msec_cy[3])
  );
  XORCY   \Mcount_msec_xor<3>  (
    .CI(Mcount_msec_cy[2]),
    .LI(Mcount_msec_lut[3]),
    .O(Mcount_msec3)
  );
  MUXCY   \Mcount_msec_cy<4>  (
    .CI(Mcount_msec_cy[3]),
    .DI(S1_3_OBUF_195),
    .S(Mcount_msec_lut[4]),
    .O(Mcount_msec_cy[4])
  );
  XORCY   \Mcount_msec_xor<4>  (
    .CI(Mcount_msec_cy[3]),
    .LI(Mcount_msec_lut[4]),
    .O(Mcount_msec4)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mcount_msec_lut<5>  (
    .I0(msec_cmp_ge0000),
    .I1(msec[5]),
    .I2(S1_3_OBUF_195),
    .O(Mcount_msec_lut[5])
  );
  MUXCY   \Mcount_msec_cy<5>  (
    .CI(Mcount_msec_cy[4]),
    .DI(S1_3_OBUF_195),
    .S(Mcount_msec_lut[5]),
    .O(Mcount_msec_cy[5])
  );
  XORCY   \Mcount_msec_xor<5>  (
    .CI(Mcount_msec_cy[4]),
    .LI(Mcount_msec_lut[5]),
    .O(Mcount_msec5)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mcount_msec_lut<6>  (
    .I0(msec_cmp_ge0000),
    .I1(msec[6]),
    .I2(S1_3_OBUF_195),
    .O(Mcount_msec_lut[6])
  );
  MUXCY   \Mcount_msec_cy<6>  (
    .CI(Mcount_msec_cy[5]),
    .DI(S1_3_OBUF_195),
    .S(Mcount_msec_lut[6]),
    .O(Mcount_msec_cy[6])
  );
  XORCY   \Mcount_msec_xor<6>  (
    .CI(Mcount_msec_cy[5]),
    .LI(Mcount_msec_lut[6]),
    .O(Mcount_msec6)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mcount_msec_lut<7>  (
    .I0(msec_cmp_ge0000),
    .I1(msec[7]),
    .I2(S1_3_OBUF_195),
    .O(Mcount_msec_lut[7])
  );
  MUXCY   \Mcount_msec_cy<7>  (
    .CI(Mcount_msec_cy[6]),
    .DI(S1_3_OBUF_195),
    .S(Mcount_msec_lut[7]),
    .O(Mcount_msec_cy[7])
  );
  XORCY   \Mcount_msec_xor<7>  (
    .CI(Mcount_msec_cy[6]),
    .LI(Mcount_msec_lut[7]),
    .O(Mcount_msec7)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mcount_msec_lut<8>  (
    .I0(msec_cmp_ge0000),
    .I1(msec[8]),
    .I2(S1_3_OBUF_195),
    .O(Mcount_msec_lut[8])
  );
  MUXCY   \Mcount_msec_cy<8>  (
    .CI(Mcount_msec_cy[7]),
    .DI(S1_3_OBUF_195),
    .S(Mcount_msec_lut[8]),
    .O(Mcount_msec_cy[8])
  );
  XORCY   \Mcount_msec_xor<8>  (
    .CI(Mcount_msec_cy[7]),
    .LI(Mcount_msec_lut[8]),
    .O(Mcount_msec8)
  );
  XORCY   \Mcount_msec_xor<9>  (
    .CI(Mcount_msec_cy[8]),
    .LI(Mcount_msec_lut[9]),
    .O(Mcount_msec9)
  );
  FDC   msec_0 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_187),
    .D(Mcount_msec),
    .Q(msec[0])
  );
  FDC   msec_1 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_187),
    .D(Mcount_msec1),
    .Q(msec[1])
  );
  FDC   msec_2 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_187),
    .D(Mcount_msec2),
    .Q(msec[2])
  );
  FDC   msec_3 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_187),
    .D(Mcount_msec3),
    .Q(msec[3])
  );
  FDC   msec_4 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_187),
    .D(Mcount_msec4),
    .Q(msec[4])
  );
  FDC   msec_5 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_187),
    .D(Mcount_msec5),
    .Q(msec[5])
  );
  FDC   msec_6 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_187),
    .D(Mcount_msec6),
    .Q(msec[6])
  );
  FDC   msec_7 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_187),
    .D(Mcount_msec7),
    .Q(msec[7])
  );
  FDC   msec_8 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_187),
    .D(Mcount_msec8),
    .Q(msec[8])
  );
  FDC   msec_9 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_187),
    .D(Mcount_msec9),
    .Q(msec[9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_msect0_lut<2>  (
    .I0(msec[2]),
    .I1(X2_0_OBUF_226),
    .O(Msub_msect0_lut[2])
  );
  MUXCY   \Msub_msect0_cy<2>  (
    .CI(N1),
    .DI(msec[2]),
    .S(Msub_msect0_lut[2]),
    .O(Msub_msect0_cy[2])
  );
  XORCY   \Msub_msect0_xor<2>  (
    .CI(N1),
    .LI(Msub_msect0_lut[2]),
    .O(msect0[2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_msect0_lut<3>  (
    .I0(msec[3]),
    .I1(X2_1_OBUF_227),
    .O(Msub_msect0_lut[3])
  );
  MUXCY   \Msub_msect0_cy<3>  (
    .CI(Msub_msect0_cy[2]),
    .DI(msec[3]),
    .S(Msub_msect0_lut[3]),
    .O(Msub_msect0_cy[3])
  );
  XORCY   \Msub_msect0_xor<3>  (
    .CI(Msub_msect0_cy[2]),
    .LI(Msub_msect0_lut[3]),
    .O(msect0[3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_msect0_lut<4>  (
    .I0(msec[4]),
    .I1(X2_2_OBUF_228),
    .O(Msub_msect0_lut[4])
  );
  MUXCY   \Msub_msect0_cy<4>  (
    .CI(Msub_msect0_cy[3]),
    .DI(msec[4]),
    .S(Msub_msect0_lut[4]),
    .O(Msub_msect0_cy[4])
  );
  XORCY   \Msub_msect0_xor<4>  (
    .CI(Msub_msect0_cy[3]),
    .LI(Msub_msect0_lut[4]),
    .O(msect0[4])
  );
  MUXCY   \Msub_msect0_cy<5>  (
    .CI(Msub_msect0_cy[4]),
    .DI(msec[5]),
    .S(Msub_msect0_lut[5]),
    .O(Msub_msect0_cy[5])
  );
  XORCY   \Msub_msect0_xor<5>  (
    .CI(Msub_msect0_cy[4]),
    .LI(Msub_msect0_lut[5]),
    .O(msect0[5])
  );
  MUXCY   \Msub_msect0_cy<6>  (
    .CI(Msub_msect0_cy[5]),
    .DI(N1),
    .S(Msub_msect0_lut[6]),
    .O(Msub_msect0_cy[6])
  );
  XORCY   \Msub_msect0_xor<6>  (
    .CI(Msub_msect0_cy[5]),
    .LI(Msub_msect0_lut[6]),
    .O(msect0[6])
  );
  MUXCY   \Msub_msect0_cy<7>  (
    .CI(Msub_msect0_cy[6]),
    .DI(N1),
    .S(Msub_msect0_lut[7]),
    .O(Msub_msect0_cy[7])
  );
  XORCY   \Msub_msect0_xor<7>  (
    .CI(Msub_msect0_cy[6]),
    .LI(Msub_msect0_lut[7]),
    .O(msect0[7])
  );
  MUXCY   \Msub_msect0_cy<8>  (
    .CI(Msub_msect0_cy[7]),
    .DI(N1),
    .S(Msub_msect0_lut[8]),
    .O(Msub_msect0_cy[8])
  );
  XORCY   \Msub_msect0_xor<8>  (
    .CI(Msub_msect0_cy[7]),
    .LI(Msub_msect0_lut[8]),
    .O(msect0[8])
  );
  XORCY   \Msub_msect0_xor<9>  (
    .CI(Msub_msect0_cy[8]),
    .LI(Msub_msect0_lut[9]),
    .O(msect0[9])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \H1<1>11  (
    .I0(hour[4]),
    .I1(hour[3]),
    .I2(hour[2]),
    .O(H1_1_OBUF_23)
  );
  LUT4 #(
    .INIT ( 16'hC4C6 ))
  \H2<3>1  (
    .I0(hour[4]),
    .I1(hour[3]),
    .I2(hour[2]),
    .I3(hour[1]),
    .O(H2_3_OBUF_30)
  );
  LUT4 #(
    .INIT ( 16'h381C ))
  \H2<2>1  (
    .I0(hour[1]),
    .I1(hour[2]),
    .I2(hour[4]),
    .I3(hour[3]),
    .O(H2_2_OBUF_29)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \sec1<2>1  (
    .I0(sec[5]),
    .I1(sec[3]),
    .I2(sec[4]),
    .O(S1_2_OBUF_194)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \min1<2>1  (
    .I0(min[5]),
    .I1(min[3]),
    .I2(min[4]),
    .O(M1_2_OBUF_37)
  );
  LUT4 #(
    .INIT ( 16'h444E ))
  \sec_mux0001<5>  (
    .I0(msec_cmp_ge0000),
    .I1(DIN0_0_IBUF_7),
    .I2(sec[0]),
    .I3(N01),
    .O(sec_mux0001[5])
  );
  LUT3 #(
    .INIT ( 8'hAB ))
  sec_not00021 (
    .I0(msec_cmp_ge0000),
    .I1(SEL_0_IBUF_205),
    .I2(SEL_1_IBUF_206),
    .O(sec_not0002)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \sec_mux0001<3>11  (
    .I0(sec[0]),
    .I1(sec[1]),
    .O(N37)
  );
  LUT4 #(
    .INIT ( 16'hAB01 ))
  \min_mux0001<5>  (
    .I0(N2),
    .I1(min[0]),
    .I2(N4),
    .I3(DIN0_0_IBUF_7),
    .O(min_mux0001[5])
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  \sec_mux0001<2>  (
    .I0(N126),
    .I1(N6),
    .I2(N42),
    .I3(msec_cmp_ge0000),
    .O(sec_mux0001[2])
  );
  LUT4 #(
    .INIT ( 16'hEAAE ))
  \sec_mux0001<3>  (
    .I0(N10),
    .I1(N102),
    .I2(sec[2]),
    .I3(N37),
    .O(sec_mux0001[3])
  );
  LUT4 #(
    .INIT ( 16'h4462 ))
  \sec1<1>1  (
    .I0(sec[5]),
    .I1(sec[4]),
    .I2(sec[2]),
    .I3(sec[3]),
    .O(S1_1_OBUF_193)
  );
  LUT4 #(
    .INIT ( 16'h4462 ))
  \min1<1>1  (
    .I0(min[5]),
    .I1(min[4]),
    .I2(min[2]),
    .I3(min[3]),
    .O(M1_1_OBUF_36)
  );
  LUT3 #(
    .INIT ( 8'h2F ))
  min_not00021 (
    .I0(SEL_0_IBUF_205),
    .I1(SEL_1_IBUF_206),
    .I2(N2),
    .O(min_not0002)
  );
  LUT4 #(
    .INIT ( 16'h1333 ))
  \hour_mux0001<0>121  (
    .I0(hour[0]),
    .I1(hour[3]),
    .I2(hour[2]),
    .I3(hour[1]),
    .O(\hour_mux0001<0>121_236 )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \hour_mux0001<0>134  (
    .I0(hour[4]),
    .I1(N131),
    .I2(\hour_mux0001<0>15_238 ),
    .I3(\hour_mux0001<0>121_236 ),
    .O(\hour_mux0001<0>134_237 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hour_mux0001<0>143  (
    .I0(\hour_mux0001<0>134_237 ),
    .I1(N2),
    .O(N11)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mmult_min_mult0000_Madd_lut<3>1  (
    .I0(\Mmult_min_mult0000_Madd_lut[5] ),
    .I1(DIN1_0_IBUF_15),
    .O(\Mmult_min_mult0000_Madd_lut[3] )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_sec_add0000_lut<2>1  (
    .I0(DIN1_1_IBUF_16),
    .I1(DIN0_2_IBUF_9),
    .O(Madd_sec_add0000_lut[2])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \min_mux0001<2>  (
    .I0(N42),
    .I1(N14),
    .I2(N2),
    .I3(N127),
    .O(min_mux0001[2])
  );
  LUT3 #(
    .INIT ( 8'h2F ))
  hour_not00021 (
    .I0(SEL_1_IBUF_206),
    .I1(SEL_0_IBUF_205),
    .I2(N20),
    .O(hour_not0002)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_sec_add0000_lut<1>1  (
    .I0(DIN1_0_IBUF_15),
    .I1(DIN0_1_IBUF_8),
    .O(Madd_sec_add0000_lut[1])
  );
  LUT4 #(
    .INIT ( 16'hAA6A ))
  \sec_mux0001<1>_SW0  (
    .I0(sec[4]),
    .I1(sec[2]),
    .I2(sec[3]),
    .I3(N37),
    .O(N22)
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  \sec_mux0001<1>  (
    .I0(N22),
    .I1(N102),
    .I2(sec_add0000[4]),
    .I3(msec_cmp_ge0000),
    .O(sec_mux0001[1])
  );
  LUT4 #(
    .INIT ( 16'hAA6A ))
  \min_mux0001<1>_SW0  (
    .I0(min[4]),
    .I1(min[2]),
    .I2(min[3]),
    .I3(N48),
    .O(N24)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \min_mux0001<1>  (
    .I0(N2),
    .I1(sec_add0000[4]),
    .I2(N24),
    .I3(N103),
    .O(min_mux0001[1])
  );
  LUT4 #(
    .INIT ( 16'hC600 ))
  \hour_mux0001<3>1  (
    .I0(N135),
    .I1(Madd_hour_share0000_lut[1]),
    .I2(Madd_hour_share0000_lut[0]),
    .I3(N11),
    .O(hour_mux0001[3])
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \msec1<3>1  (
    .I0(msect0[6]),
    .I1(msect0[4]),
    .I2(msect0[5]),
    .I3(N98),
    .O(X1_3_OBUF_221)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \msec2<3>1  (
    .I0(msec[8]),
    .I1(msec[9]),
    .I2(N34),
    .O(X2_3_OBUF_229)
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \sec_mux0001<0>31  (
    .I0(sec[3]),
    .I1(sec[4]),
    .I2(sec[2]),
    .O(N36)
  );
  LUT4 #(
    .INIT ( 16'h08F8 ))
  \Madd_hour_share0000_xor<3>121  (
    .I0(DIN0_2_IBUF_9),
    .I1(N20),
    .I2(Madd_hour_share0000_lut[2]),
    .I3(N132),
    .O(N26)
  );
  LUT3 #(
    .INIT ( 8'h5C ))
  \hour_mux0001<0>_SW0  (
    .I0(N0),
    .I1(hour[4]),
    .I2(N134),
    .O(N341)
  );
  LUT4 #(
    .INIT ( 16'h75FF ))
  \min_mux0001<0>1  (
    .I0(sec[5]),
    .I1(N12),
    .I2(N36),
    .I3(msec_cmp_ge0000),
    .O(N2)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \msec2<1>21  (
    .I0(msec[5]),
    .I1(msec[6]),
    .I2(msec[7]),
    .O(N34)
  );
  LUT4 #(
    .INIT ( 16'h01FF ))
  \msec2<2>_SW0  (
    .I0(msec[6]),
    .I1(msec[4]),
    .I2(msec[5]),
    .I3(msec[7]),
    .O(N38)
  );
  LUT4 #(
    .INIT ( 16'h46CE ))
  \msec2<2>  (
    .I0(msec[8]),
    .I1(msec[9]),
    .I2(N38),
    .I3(N34),
    .O(X2_2_OBUF_228)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \msec2<1>51  (
    .I0(msec[7]),
    .I1(msec[3]),
    .I2(msec[4]),
    .I3(msec[5]),
    .O(\msec2<1>51_278 )
  );
  LUT4 #(
    .INIT ( 16'hA888 ))
  \msec2<1>57  (
    .I0(msec[9]),
    .I1(msec[5]),
    .I2(msec[3]),
    .I3(msec[4]),
    .O(\msec2<1>57_279 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \msec2<1>66  (
    .I0(msec[6]),
    .I1(\msec2<1>51_278 ),
    .I2(\msec2<1>57_279 ),
    .O(\msec2<1>66_280 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \msec1<0>51  (
    .I0(msect0[7]),
    .I1(msect0[8]),
    .I2(msect0[9]),
    .O(N98)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \msec1<0>119  (
    .I0(msect0[2]),
    .I1(msect0[4]),
    .O(\msec1<0>119_259 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \msec2<0>54  (
    .I0(msec[7]),
    .I1(\msec2<0>7 ),
    .I2(\msec2<0>14 ),
    .I3(\msec2<0>49 ),
    .O(\msec2<0>54_275 )
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \msec2<0>237  (
    .I0(msec[9]),
    .I1(\msec2<0>54_275 ),
    .I2(\msec2<0>110_266 ),
    .I3(\msec2<0>225_272 ),
    .O(X2_0_OBUF_226)
  );
  IBUF   RESET_IBUF (
    .I(RESET),
    .O(RESET_IBUF_187)
  );
  IBUF   DIN0_3_IBUF (
    .I(DIN0[3]),
    .O(DIN0_3_IBUF_10)
  );
  IBUF   DIN0_2_IBUF (
    .I(DIN0[2]),
    .O(DIN0_2_IBUF_9)
  );
  IBUF   DIN0_1_IBUF (
    .I(DIN0[1]),
    .O(DIN0_1_IBUF_8)
  );
  IBUF   DIN0_0_IBUF (
    .I(DIN0[0]),
    .O(DIN0_0_IBUF_7)
  );
  IBUF   DIN1_3_IBUF (
    .I(DIN1[3]),
    .O(DIN1_3_IBUF_17)
  );
  IBUF   DIN1_2_IBUF (
    .I(DIN1[2]),
    .O(\Mmult_min_mult0000_Madd_lut[5] )
  );
  IBUF   DIN1_1_IBUF (
    .I(DIN1[1]),
    .O(DIN1_1_IBUF_16)
  );
  IBUF   DIN1_0_IBUF (
    .I(DIN1[0]),
    .O(DIN1_0_IBUF_15)
  );
  IBUF   SEL_1_IBUF (
    .I(SEL[1]),
    .O(SEL_1_IBUF_206)
  );
  IBUF   SEL_0_IBUF (
    .I(SEL[0]),
    .O(SEL_0_IBUF_205)
  );
  OBUF   H1_3_OBUF (
    .I(S1_3_OBUF_195),
    .O(H1[3])
  );
  OBUF   H1_2_OBUF (
    .I(S1_3_OBUF_195),
    .O(H1[2])
  );
  OBUF   H1_1_OBUF (
    .I(H1_1_OBUF_23),
    .O(H1[1])
  );
  OBUF   H1_0_OBUF (
    .I(H1_0_OBUF_22),
    .O(H1[0])
  );
  OBUF   H2_3_OBUF (
    .I(H2_3_OBUF_30),
    .O(H2[3])
  );
  OBUF   H2_2_OBUF (
    .I(H2_2_OBUF_29),
    .O(H2[2])
  );
  OBUF   H2_1_OBUF (
    .I(H2_1_OBUF_28),
    .O(H2[1])
  );
  OBUF   H2_0_OBUF (
    .I(hour[0]),
    .O(H2[0])
  );
  OBUF   M1_3_OBUF (
    .I(S1_3_OBUF_195),
    .O(M1[3])
  );
  OBUF   M1_2_OBUF (
    .I(M1_2_OBUF_37),
    .O(M1[2])
  );
  OBUF   M1_1_OBUF (
    .I(M1_1_OBUF_36),
    .O(M1[1])
  );
  OBUF   M1_0_OBUF (
    .I(M1_0_OBUF_35),
    .O(M1[0])
  );
  OBUF   M2_3_OBUF (
    .I(M2_3_OBUF_44),
    .O(M2[3])
  );
  OBUF   M2_2_OBUF (
    .I(M2_2_OBUF_43),
    .O(M2[2])
  );
  OBUF   M2_1_OBUF (
    .I(M2_1_OBUF_42),
    .O(M2[1])
  );
  OBUF   M2_0_OBUF (
    .I(min[0]),
    .O(M2[0])
  );
  OBUF   S1_3_OBUF (
    .I(S1_3_OBUF_195),
    .O(S1[3])
  );
  OBUF   S1_2_OBUF (
    .I(S1_2_OBUF_194),
    .O(S1[2])
  );
  OBUF   S1_1_OBUF (
    .I(S1_1_OBUF_193),
    .O(S1[1])
  );
  OBUF   S1_0_OBUF (
    .I(S1_0_OBUF_192),
    .O(S1[0])
  );
  OBUF   S2_3_OBUF (
    .I(S2_3_OBUF_202),
    .O(S2[3])
  );
  OBUF   S2_2_OBUF (
    .I(S2_2_OBUF_201),
    .O(S2[2])
  );
  OBUF   S2_1_OBUF (
    .I(S2_1_OBUF_200),
    .O(S2[1])
  );
  OBUF   S2_0_OBUF (
    .I(sec[0]),
    .O(S2[0])
  );
  OBUF   X0_3_OBUF (
    .I(X0_3_OBUF_213),
    .O(X0[3])
  );
  OBUF   X0_2_OBUF (
    .I(X0_2_OBUF_212),
    .O(X0[2])
  );
  OBUF   X0_1_OBUF (
    .I(X0_1_OBUF_211),
    .O(X0[1])
  );
  OBUF   X0_0_OBUF (
    .I(msec[0]),
    .O(X0[0])
  );
  OBUF   X1_3_OBUF (
    .I(X1_3_OBUF_221),
    .O(X1[3])
  );
  OBUF   X1_2_OBUF (
    .I(X1_2_OBUF_220),
    .O(X1[2])
  );
  OBUF   X1_1_OBUF (
    .I(X1_1_OBUF_219),
    .O(X1[1])
  );
  OBUF   X1_0_OBUF (
    .I(X1_0_OBUF_218),
    .O(X1[0])
  );
  OBUF   X2_3_OBUF (
    .I(X2_3_OBUF_229),
    .O(X2[3])
  );
  OBUF   X2_2_OBUF (
    .I(X2_2_OBUF_228),
    .O(X2[2])
  );
  OBUF   X2_1_OBUF (
    .I(X2_1_OBUF_227),
    .O(X2[1])
  );
  OBUF   X2_0_OBUF (
    .I(X2_0_OBUF_226),
    .O(X2[0])
  );
  LUT4 #(
    .INIT ( 16'h3A33 ))
  \Madd_hour_share0000_lut<0>1_SW0  (
    .I0(DIN0_0_IBUF_7),
    .I1(hour[0]),
    .I2(min[2]),
    .I3(N130),
    .O(N45)
  );
  LUT4 #(
    .INIT ( 16'hF087 ))
  \Madd_hour_share0000_cy<3>11_SW1  (
    .I0(DIN0_3_IBUF_10),
    .I1(N20),
    .I2(N341),
    .I3(N128),
    .O(N52)
  );
  LUT4 #(
    .INIT ( 16'h0A88 ))
  \hour_mux0001<0>  (
    .I0(N11),
    .I1(N51),
    .I2(N52),
    .I3(N26),
    .O(hour_mux0001[0])
  );
  LUT4 #(
    .INIT ( 16'h0EE0 ))
  \hour_mux0001<1>1  (
    .I0(\hour_mux0001<0>134_237 ),
    .I1(N2),
    .I2(Madd_hour_share0000_lut[3]),
    .I3(N26),
    .O(hour_mux0001[1])
  );
  LUT4 #(
    .INIT ( 16'hACAA ))
  \Madd_hour_share0000_lut<0>1  (
    .I0(DIN0_0_IBUF_7),
    .I1(N45),
    .I2(N58),
    .I3(msec_cmp_ge0000),
    .O(Madd_hour_share0000_lut[0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Madd_hour_share0000_xor<4>121_SW0  (
    .I0(DIN1_0_IBUF_15),
    .I1(DIN0_1_IBUF_8),
    .O(N60)
  );
  LUT4 #(
    .INIT ( 16'h4755 ))
  \Madd_hour_share0000_lut<1>1  (
    .I0(N60),
    .I1(N56),
    .I2(N61),
    .I3(msec_cmp_ge0000),
    .O(Madd_hour_share0000_lut[1])
  );
  LUT4 #(
    .INIT ( 16'h7555 ))
  \Madd_hour_share0000_xor<3>11_SW0_SW0  (
    .I0(DIN0_1_IBUF_8),
    .I1(N137),
    .I2(N63),
    .I3(msec_cmp_ge0000),
    .O(N47)
  );
  LUT4 #(
    .INIT ( 16'hA800 ))
  msec_cmp_ge0000215 (
    .I0(msec[9]),
    .I1(msec[4]),
    .I2(N67),
    .I3(N133),
    .O(msec_cmp_ge0000)
  );
  LUT4 #(
    .INIT ( 16'hA888 ))
  \min_mux0001<0>1_SW0_SW0  (
    .I0(sec[5]),
    .I1(min[2]),
    .I2(min[1]),
    .I3(min[0]),
    .O(N691)
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  \hour_mux0001<0>15  (
    .I0(min[2]),
    .I1(min[0]),
    .I2(min[1]),
    .O(\hour_mux0001<0>15_238 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \hour_mux0001<4>1  (
    .I0(Madd_hour_share0000_lut[0]),
    .I1(N2),
    .I2(\hour_mux0001<0>134_237 ),
    .O(hour_mux0001[4])
  );
  LUT4 #(
    .INIT ( 16'hE00E ))
  \hour_mux0001<2>1  (
    .I0(\hour_mux0001<0>134_237 ),
    .I1(N2),
    .I2(N129),
    .I3(N3),
    .O(hour_mux0001[2])
  );
  MUXF5   \Madd_hour_share0000_xor<4>121_SW1  (
    .I0(N73),
    .I1(N74),
    .S(N36),
    .O(N61)
  );
  LUT4 #(
    .INIT ( 16'h0F99 ))
  \Madd_hour_share0000_xor<4>121_SW1_G  (
    .I0(DIN1_0_IBUF_15),
    .I1(DIN0_1_IBUF_8),
    .I2(hour[1]),
    .I3(N12),
    .O(N74)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \msec2<1>27_SW0  (
    .I0(msec[5]),
    .I1(msec[6]),
    .O(N75)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \msec2<0>200  (
    .I0(msec[5]),
    .I1(msec[6]),
    .I2(N77),
    .O(\msec2<0>200_269 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \min_mux0001<0>40_SW0  (
    .I0(min[2]),
    .I1(min[3]),
    .I2(min[4]),
    .O(N79)
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \min_mux0001<0>40  (
    .I0(min[5]),
    .I1(min[0]),
    .I2(min[1]),
    .I3(N79),
    .O(\min_mux0001<0>40_252 )
  );
  LUT4 #(
    .INIT ( 16'hAE8A ))
  \msec1<0>93_SW0  (
    .I0(msect0[3]),
    .I1(msect0[2]),
    .I2(msect0[4]),
    .I3(msec[1]),
    .O(N81)
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \Msub_msec0_xor<3>12  (
    .I0(X1_0_OBUF_218),
    .I1(X1_2_OBUF_220),
    .I2(msect0[3]),
    .I3(N87),
    .O(X0_3_OBUF_213)
  );
  LUT4 #(
    .INIT ( 16'hFF4D ))
  \msec1<0>50_SW0  (
    .I0(msec[1]),
    .I1(msect0[4]),
    .I2(msect0[2]),
    .I3(msect0[5]),
    .O(N89)
  );
  LUT4 #(
    .INIT ( 16'hEFEE ))
  \msec1<0>50  (
    .I0(N98),
    .I1(\msec1<0>12 ),
    .I2(N89),
    .I3(msect0[3]),
    .O(\msec1<0>50_263 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \msec2<0>110_SW0  (
    .I0(msec[6]),
    .I1(msec[3]),
    .I2(msec[8]),
    .I3(msec[5]),
    .O(N91)
  );
  LUT4 #(
    .INIT ( 16'h0046 ))
  \msec2<0>110  (
    .I0(msec[7]),
    .I1(msec[9]),
    .I2(msec[4]),
    .I3(N91),
    .O(\msec2<0>110_266 )
  );
  LUT4 #(
    .INIT ( 16'hA888 ))
  \msec2<0>149_SW0  (
    .I0(msec[5]),
    .I1(msec[4]),
    .I2(msec[2]),
    .I3(msec[3]),
    .O(N93)
  );
  LUT3 #(
    .INIT ( 8'h4C ))
  \Mcount_msec_lut<4>  (
    .I0(msec[9]),
    .I1(msec[4]),
    .I2(N54),
    .O(Mcount_msec_lut[4])
  );
  LUT4 #(
    .INIT ( 16'h57FF ))
  msec_cmp_ge0000_inv1 (
    .I0(msec[9]),
    .I1(N136),
    .I2(msec[4]),
    .I3(N54),
    .O(msec_cmp_ge0000_inv)
  );
  LUT4 #(
    .INIT ( 16'h444C ))
  \Mcount_msec_lut<9>  (
    .I0(N54),
    .I1(msec[9]),
    .I2(N67),
    .I3(msec[4]),
    .O(Mcount_msec_lut[9])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \sec_mux0001<5>_SW0  (
    .I0(sec[2]),
    .I1(sec[3]),
    .I2(sec[4]),
    .I3(sec[5]),
    .O(N01)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \min_mux0001<5>_SW0  (
    .I0(min[3]),
    .I1(min[4]),
    .I2(min[5]),
    .I3(min[2]),
    .O(N4)
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \sec_mux0001<2>_SW0  (
    .I0(sec[3]),
    .I1(sec[2]),
    .I2(sec[0]),
    .I3(sec[1]),
    .O(N6)
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \min_mux0001<2>_SW0  (
    .I0(min[3]),
    .I1(min[2]),
    .I2(min[0]),
    .I3(min[1]),
    .O(N14)
  );
  LUT4 #(
    .INIT ( 16'h9F99 ))
  \sec_mux0001<4>_SW1  (
    .I0(sec[0]),
    .I1(sec[1]),
    .I2(N36),
    .I3(sec[5]),
    .O(N95)
  );
  LUT4 #(
    .INIT ( 16'h14BE ))
  \sec_mux0001<4>  (
    .I0(msec_cmp_ge0000),
    .I1(DIN1_0_IBUF_15),
    .I2(DIN0_1_IBUF_8),
    .I3(N95),
    .O(sec_mux0001[4])
  );
  LUT4 #(
    .INIT ( 16'hD294 ))
  \H2<1>1  (
    .I0(hour[3]),
    .I1(hour[4]),
    .I2(hour[1]),
    .I3(hour[2]),
    .O(H2_1_OBUF_28)
  );
  LUT4 #(
    .INIT ( 16'h4462 ))
  \H1<0>2  (
    .I0(hour[4]),
    .I1(hour[3]),
    .I2(hour[1]),
    .I3(hour[2]),
    .O(H1_0_OBUF_22)
  );
  LUT4 #(
    .INIT ( 16'hDB93 ))
  \min_mux0001<0>31  (
    .I0(DIN1_1_IBUF_16),
    .I1(\Mmult_min_mult0000_Madd_lut[5] ),
    .I2(DIN1_3_IBUF_17),
    .I3(DIN1_0_IBUF_15),
    .O(N29)
  );
  LUT4 #(
    .INIT ( 16'h6999 ))
  \Madd_hour_share0000_xor<4>111  (
    .I0(DIN1_1_IBUF_16),
    .I1(DIN1_3_IBUF_17),
    .I2(\Mmult_min_mult0000_Madd_lut[5] ),
    .I3(DIN1_0_IBUF_15),
    .O(N0)
  );
  LUT4 #(
    .INIT ( 16'h6579 ))
  \Msub_sec2_lut<2>1  (
    .I0(sec[2]),
    .I1(sec[5]),
    .I2(sec[4]),
    .I3(sec[3]),
    .O(Msub_sec2_lut[2])
  );
  LUT4 #(
    .INIT ( 16'h6579 ))
  \Msub_min2_lut<2>1  (
    .I0(min[2]),
    .I1(min[5]),
    .I2(min[4]),
    .I3(min[3]),
    .O(Msub_min2_lut[2])
  );
  LUT3 #(
    .INIT ( 8'h63 ))
  \Msub_sec2_xor<2>11  (
    .I0(sec[1]),
    .I1(Msub_sec2_lut[2]),
    .I2(S1_0_OBUF_192),
    .O(S2_2_OBUF_201)
  );
  LUT3 #(
    .INIT ( 8'h63 ))
  \Msub_min2_xor<2>11  (
    .I0(min[1]),
    .I1(Msub_min2_lut[2]),
    .I2(M1_0_OBUF_35),
    .O(M2_2_OBUF_43)
  );
  LUT4 #(
    .INIT ( 16'h6696 ))
  \Msub_msec0_xor<2>11  (
    .I0(X1_1_OBUF_219),
    .I1(msect0[2]),
    .I2(X1_0_OBUF_218),
    .I3(msec[1]),
    .O(X0_2_OBUF_212)
  );
  LUT4 #(
    .INIT ( 16'h9555 ))
  \Msub_msect0_lut<5>  (
    .I0(msec[5]),
    .I1(msec[8]),
    .I2(msec[9]),
    .I3(N34),
    .O(Msub_msect0_lut[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Msub_sec2_xor<1>11  (
    .I0(sec[1]),
    .I1(S1_0_OBUF_192),
    .O(S2_1_OBUF_200)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Msub_min2_xor<1>11  (
    .I0(min[1]),
    .I1(M1_0_OBUF_35),
    .O(M2_1_OBUF_42)
  );
  LUT4 #(
    .INIT ( 16'hADBD ))
  \msec1<2>_SW1  (
    .I0(msect0[6]),
    .I1(msect0[4]),
    .I2(msect0[5]),
    .I3(msect0[3]),
    .O(N97)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \msec1<2>  (
    .I0(msect0[7]),
    .I1(msect0[8]),
    .I2(msect0[9]),
    .I3(N97),
    .O(X1_2_OBUF_220)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Msub_msec0_xor<1>11  (
    .I0(msec[1]),
    .I1(X1_0_OBUF_218),
    .O(X0_1_OBUF_211)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \msec1<1>  (
    .I0(msect0[7]),
    .I1(msect0[8]),
    .I2(msect0[9]),
    .I3(N99),
    .O(X1_1_OBUF_219)
  );
  LUT4 #(
    .INIT ( 16'h7510 ))
  \Msub_msec0_xor<3>12_SW0  (
    .I0(msect0[2]),
    .I1(msec[1]),
    .I2(X1_0_OBUF_218),
    .I3(X1_1_OBUF_219),
    .O(N87)
  );
  LUT4 #(
    .INIT ( 16'h4462 ))
  \msec2<0>225_SW0  (
    .I0(msec[7]),
    .I1(msec[8]),
    .I2(N93),
    .I3(msec[6]),
    .O(N101)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \msec2<0>225  (
    .I0(msec[9]),
    .I1(\msec2<0>200_269 ),
    .I2(N101),
    .O(\msec2<0>225_272 )
  );
  LUT4 #(
    .INIT ( 16'h157F ))
  \Madd_sec_add0000_xor<4>11_SW0  (
    .I0(DIN1_1_IBUF_16),
    .I1(DIN1_0_IBUF_15),
    .I2(DIN0_1_IBUF_8),
    .I3(DIN0_2_IBUF_9),
    .O(N181)
  );
  LUT4 #(
    .INIT ( 16'h9A59 ))
  \Madd_sec_add0000_xor<4>12  (
    .I0(N0),
    .I1(\Mmult_min_mult0000_Madd_lut[3] ),
    .I2(N181),
    .I3(DIN0_3_IBUF_10),
    .O(sec_add0000[4])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sec_mux0001<2>21  (
    .I0(DIN0_3_IBUF_10),
    .I1(\Mmult_min_mult0000_Madd_lut[5] ),
    .I2(N1031),
    .O(N42)
  );
  LUT4 #(
    .INIT ( 16'h56F6 ))
  \Msub_sec2_xor<3>12_SW1  (
    .I0(S1_0_OBUF_192),
    .I1(sec[2]),
    .I2(Msub_sec2_lut[2]),
    .I3(sec[1]),
    .O(N105)
  );
  LUT4 #(
    .INIT ( 16'h6965 ))
  \Msub_sec2_xor<3>12  (
    .I0(N105),
    .I1(sec[5]),
    .I2(sec[3]),
    .I3(sec[4]),
    .O(S2_3_OBUF_202)
  );
  LUT4 #(
    .INIT ( 16'h56F6 ))
  \Msub_min2_xor<3>12_SW1  (
    .I0(M1_0_OBUF_35),
    .I1(min[2]),
    .I2(Msub_min2_lut[2]),
    .I3(min[1]),
    .O(N107)
  );
  LUT4 #(
    .INIT ( 16'h6965 ))
  \Msub_min2_xor<3>12  (
    .I0(N107),
    .I1(min[5]),
    .I2(min[3]),
    .I3(min[4]),
    .O(M2_3_OBUF_44)
  );
  LUT4 #(
    .INIT ( 16'h60F6 ))
  \Madd_sec_add0000_xor<4>11  (
    .I0(\Mmult_min_mult0000_Madd_lut[5] ),
    .I1(DIN1_0_IBUF_15),
    .I2(DIN0_3_IBUF_10),
    .I3(N181),
    .O(N27)
  );
  LUT4 #(
    .INIT ( 16'h462A ))
  \sec_mux0001<2>21_SW0  (
    .I0(DIN1_0_IBUF_15),
    .I1(DIN1_1_IBUF_16),
    .I2(DIN0_1_IBUF_8),
    .I3(DIN0_2_IBUF_9),
    .O(N1031)
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \Madd_hour_share0000_xor<4>121_SW2  (
    .I0(sec[3]),
    .I1(sec[4]),
    .I2(sec[2]),
    .I3(N125),
    .O(N63)
  );
  BUFGP   CLK_BUFGP (
    .I(CLK),
    .O(CLK_BUFGP_1)
  );
  INV   \Msub_msect0_lut<6>_INV_0  (
    .I(msec[6]),
    .O(Msub_msect0_lut[6])
  );
  INV   \Msub_msect0_lut<7>_INV_0  (
    .I(msec[7]),
    .O(Msub_msect0_lut[7])
  );
  INV   \Msub_msect0_lut<8>_INV_0  (
    .I(msec[8]),
    .O(Msub_msect0_lut[8])
  );
  INV   \Msub_msect0_lut<9>_INV_0  (
    .I(msec[9]),
    .O(Msub_msect0_lut[9])
  );
  INV   CLK_inv1_INV_0 (
    .I(CLK_BUFGP_1),
    .O(CLK_inv)
  );
  INV   \Madd_hour_share0000_xor<4>121_SW1_F_INV_0  (
    .I(hour[1]),
    .O(N73)
  );
  MUXF5   \sec1<0>  (
    .I0(N109),
    .I1(N110),
    .S(sec[5]),
    .O(S1_0_OBUF_192)
  );
  LUT4 #(
    .INIT ( 16'hC642 ))
  \sec1<0>_F  (
    .I0(sec[4]),
    .I1(sec[3]),
    .I2(sec[2]),
    .I3(sec[1]),
    .O(N109)
  );
  LUT4 #(
    .INIT ( 16'hAAFD ))
  \sec1<0>_G  (
    .I0(sec[4]),
    .I1(sec[1]),
    .I2(sec[2]),
    .I3(sec[3]),
    .O(N110)
  );
  MUXF5   \min1<0>  (
    .I0(N111),
    .I1(N112),
    .S(min[3]),
    .O(M1_0_OBUF_35)
  );
  LUT4 #(
    .INIT ( 16'hB9AA ))
  \min1<0>_F  (
    .I0(min[5]),
    .I1(min[2]),
    .I2(min[1]),
    .I3(min[4]),
    .O(N111)
  );
  LUT4 #(
    .INIT ( 16'hD998 ))
  \min1<0>_G  (
    .I0(min[5]),
    .I1(min[4]),
    .I2(min[1]),
    .I3(min[2]),
    .O(N112)
  );
  MUXF5   \sec_mux0001<0>  (
    .I0(N113),
    .I1(N114),
    .S(msec_cmp_ge0000),
    .O(sec_mux0001[0])
  );
  LUT3 #(
    .INIT ( 8'h63 ))
  \sec_mux0001<0>_F  (
    .I0(N0),
    .I1(N29),
    .I2(N27),
    .O(N113)
  );
  LUT4 #(
    .INIT ( 16'h0819 ))
  \sec_mux0001<0>_G  (
    .I0(N36),
    .I1(sec[5]),
    .I2(N12),
    .I3(N37),
    .O(N114)
  );
  MUXF5   \min_mux0001<4>  (
    .I0(N115),
    .I1(N116),
    .S(N2),
    .O(min_mux0001[4])
  );
  LUT4 #(
    .INIT ( 16'h283C ))
  \min_mux0001<4>_F  (
    .I0(N80),
    .I1(min[1]),
    .I2(min[0]),
    .I3(min[2]),
    .O(N115)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \min_mux0001<4>_G  (
    .I0(DIN1_0_IBUF_15),
    .I1(DIN0_1_IBUF_8),
    .O(N116)
  );
  MUXF5   \msec2<1>100  (
    .I0(N117),
    .I1(N118),
    .S(msec[8]),
    .O(X2_1_OBUF_227)
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \msec2<1>100_F  (
    .I0(\msec2<1>66_280 ),
    .I1(msec[7]),
    .I2(msec[9]),
    .O(N117)
  );
  LUT4 #(
    .INIT ( 16'h1517 ))
  \msec2<1>100_G  (
    .I0(msec[7]),
    .I1(msec[9]),
    .I2(N75),
    .I3(msec[4]),
    .O(N118)
  );
  MUXF5   \msec1<0>144  (
    .I0(N119),
    .I1(N120),
    .S(msect0[6]),
    .O(X1_0_OBUF_218)
  );
  LUT4 #(
    .INIT ( 16'hEAAE ))
  \msec1<0>144_F  (
    .I0(\msec1<0>50_263 ),
    .I1(\msec1<0>119_259 ),
    .I2(msect0[3]),
    .I3(msect0[5]),
    .O(N119)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \msec1<0>144_G  (
    .I0(\msec1<0>50_263 ),
    .I1(msect0[5]),
    .I2(N81),
    .O(N120)
  );
  MUXF5   \min_mux0001<0>65  (
    .I0(N121),
    .I1(N122),
    .S(N2),
    .O(min_mux0001[0])
  );
  LUT4 #(
    .INIT ( 16'h88A8 ))
  \min_mux0001<0>65_F  (
    .I0(\min_mux0001<0>40_252 ),
    .I1(N80),
    .I2(N48),
    .I3(min[2]),
    .O(N121)
  );
  LUT3 #(
    .INIT ( 8'h63 ))
  \min_mux0001<0>65_G  (
    .I0(N0),
    .I1(N29),
    .I2(N27),
    .O(N122)
  );
  MUXF5   \min_mux0001<3>  (
    .I0(N123),
    .I1(N124),
    .S(N2),
    .O(min_mux0001[3])
  );
  LUT4 #(
    .INIT ( 16'h60C0 ))
  \min_mux0001<3>_F  (
    .I0(min[0]),
    .I1(min[2]),
    .I2(N80),
    .I3(min[1]),
    .O(N123)
  );
  LUT4 #(
    .INIT ( 16'h6696 ))
  \min_mux0001<3>_G  (
    .I0(DIN0_2_IBUF_9),
    .I1(DIN1_1_IBUF_16),
    .I2(DIN1_0_IBUF_15),
    .I3(Madd_sec_add0000_lut[1]),
    .O(N124)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \msec1<0>121  (
    .I0(msect0[3]),
    .I1(msect0[5]),
    .O(\msec1<0>121_261 )
  );
  LUT4 #(
    .INIT ( 16'h0C04 ))
  \msec1<0>122  (
    .I0(msect0[4]),
    .I1(msect0[5]),
    .I2(msect0[3]),
    .I3(msect0[2]),
    .O(\msec1<0>122_262 )
  );
  MUXF5   \msec1<0>12_f5  (
    .I0(\msec1<0>122_262 ),
    .I1(\msec1<0>121_261 ),
    .S(msec[1]),
    .O(\msec1<0>12 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \msec2<0>71  (
    .I0(msec[2]),
    .I1(msec[3]),
    .I2(msec[4]),
    .I3(msec[5]),
    .O(\msec2<0>71_277 )
  );
  MUXF5   \msec2<0>7_f5  (
    .I0(\msec2<0>71_277 ),
    .I1(N1),
    .S(msec[6]),
    .O(\msec2<0>7 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \msec2<0>141  (
    .I0(msec[3]),
    .I1(msec[4]),
    .I2(msec[2]),
    .I3(msec[5]),
    .O(\msec2<0>141_268 )
  );
  MUXF5   \msec2<0>14_f5  (
    .I0(S1_3_OBUF_195),
    .I1(\msec2<0>141_268 ),
    .S(msec[8]),
    .O(\msec2<0>14 )
  );
  LUT4 #(
    .INIT ( 16'h0155 ))
  \msec2<0>491  (
    .I0(msec[7]),
    .I1(msec[4]),
    .I2(msec[5]),
    .I3(msec[6]),
    .O(\msec2<0>491_274 )
  );
  MUXF5   \msec2<0>49_f5  (
    .I0(\msec2<0>491_274 ),
    .I1(S1_3_OBUF_195),
    .S(msec[8]),
    .O(\msec2<0>49 )
  );
  LUT4 #(
    .INIT ( 16'hA8FE ))
  \msec2<0>200_SW01  (
    .I0(msec[4]),
    .I1(msec[3]),
    .I2(msec[2]),
    .I3(msec[7]),
    .O(\msec2<0>200_SW0 )
  );
  LUT4 #(
    .INIT ( 16'h3332 ))
  \msec2<0>200_SW02  (
    .I0(msec[4]),
    .I1(msec[7]),
    .I2(msec[2]),
    .I3(msec[3]),
    .O(\msec2<0>200_SW01_271 )
  );
  MUXF5   \msec2<0>200_SW0_f5  (
    .I0(\msec2<0>200_SW01_271 ),
    .I1(\msec2<0>200_SW0 ),
    .S(msec[8]),
    .O(N77)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \msec1<1>_SW21  (
    .I0(msect0[4]),
    .I1(msect0[5]),
    .O(\msec1<1>_SW2 )
  );
  LUT4 #(
    .INIT ( 16'h39BD ))
  \msec1<1>_SW22  (
    .I0(msect0[5]),
    .I1(msect0[4]),
    .I2(msect0[3]),
    .I3(msect0[2]),
    .O(\msec1<1>_SW21_265 )
  );
  MUXF5   \msec1<1>_SW2_f5  (
    .I0(\msec1<1>_SW21_265 ),
    .I1(\msec1<1>_SW2 ),
    .S(msect0[6]),
    .O(N99)
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \sec_mux0001<1>2_SW0  (
    .I0(sec[0]),
    .I1(sec[1]),
    .I2(sec[4]),
    .I3(sec[3]),
    .LO(N125),
    .O(N12)
  );
  LUT4_D #(
    .INIT ( 16'h08AA ))
  \sec_mux0001<1>2  (
    .I0(msec_cmp_ge0000),
    .I1(N36),
    .I2(N12),
    .I3(sec[5]),
    .LO(N126),
    .O(N102)
  );
  LUT4_D #(
    .INIT ( 16'h00F4 ))
  \min_mux0001<0>71  (
    .I0(min[2]),
    .I1(N48),
    .I2(N80),
    .I3(N2),
    .LO(N127),
    .O(N103)
  );
  LUT4_D #(
    .INIT ( 16'h66F0 ))
  \Madd_hour_share0000_lut<3>1  (
    .I0(\Mmult_min_mult0000_Madd_lut[3] ),
    .I1(DIN0_3_IBUF_10),
    .I2(hour[3]),
    .I3(N20),
    .LO(N128),
    .O(Madd_hour_share0000_lut[3])
  );
  LUT4_D #(
    .INIT ( 16'h66F0 ))
  \Madd_hour_share0000_lut<2>1  (
    .I0(DIN1_1_IBUF_16),
    .I1(DIN0_2_IBUF_9),
    .I2(hour[2]),
    .I3(N20),
    .LO(N129),
    .O(Madd_hour_share0000_lut[2])
  );
  LUT2_D #(
    .INIT ( 4'h7 ))
  hour_cmp_lt0000111 (
    .I0(min[0]),
    .I1(min[1]),
    .LO(N130),
    .O(N48)
  );
  LUT3_D #(
    .INIT ( 8'h7F ))
  hour_cmp_lt0000121 (
    .I0(min[3]),
    .I1(min[4]),
    .I2(min[5]),
    .LO(N131),
    .O(N80)
  );
  LUT4_D #(
    .INIT ( 16'hFA3A ))
  \Madd_hour_share0000_xor<3>11  (
    .I0(N47),
    .I1(hour_mux0002[4]),
    .I2(Madd_hour_share0000_lut[1]),
    .I3(Madd_hour_share0000_lut[0]),
    .LO(N132),
    .O(N3)
  );
  LUT4_L #(
    .INIT ( 16'hF078 ))
  \Madd_hour_share0000_cy<3>11_SW0  (
    .I0(DIN0_3_IBUF_10),
    .I1(N20),
    .I2(N341),
    .I3(Madd_hour_share0000_lut[3]),
    .LO(N51)
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  msec_cmp_ge0000215_SW0 (
    .I0(msec[8]),
    .I1(msec[7]),
    .I2(msec[6]),
    .I3(msec[5]),
    .LO(N133),
    .O(N54)
  );
  LUT4_D #(
    .INIT ( 16'hF4FF ))
  \Madd_hour_share0000_xor<4>121  (
    .I0(N12),
    .I1(N36),
    .I2(N56),
    .I3(msec_cmp_ge0000),
    .LO(N134),
    .O(N20)
  );
  LUT4_L #(
    .INIT ( 16'hF7F5 ))
  \min_mux0001<0>1_SW1  (
    .I0(sec[5]),
    .I1(N12),
    .I2(N80),
    .I3(N36),
    .LO(N58)
  );
  LUT4_D #(
    .INIT ( 16'hBAAA ))
  \hour_mux0002<4>1  (
    .I0(DIN0_0_IBUF_7),
    .I1(N56),
    .I2(N63),
    .I3(msec_cmp_ge0000),
    .LO(N135),
    .O(hour_mux0002[4])
  );
  LUT4_D #(
    .INIT ( 16'hFF80 ))
  msec_cmp_ge0000215_SW1 (
    .I0(msec[0]),
    .I1(msec[2]),
    .I2(msec[1]),
    .I3(msec[3]),
    .LO(N136),
    .O(N67)
  );
  LUT4_D #(
    .INIT ( 16'h7FFF ))
  \min_mux0001<0>1_SW0  (
    .I0(min[5]),
    .I1(min[4]),
    .I2(min[3]),
    .I3(N691),
    .LO(N137),
    .O(N56)
  );
  LUT4_L #(
    .INIT ( 16'h1450 ))
  \sec_mux0001<3>_SW0  (
    .I0(msec_cmp_ge0000),
    .I1(DIN1_0_IBUF_15),
    .I2(Madd_sec_add0000_lut[2]),
    .I3(DIN0_1_IBUF_8),
    .LO(N10)
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

