////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: MAIN_synthesis.v
// /___/   /\     Timestamp: Fri Jun 19 17:43:02 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim MAIN.ngc MAIN_synthesis.v 
// Device	: xc3s400-5-pq208
// Input file	: MAIN.ngc
// Output file	: G:\FPGA\Watch\netgen\synthesis\MAIN_synthesis.v
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
  wire \Mmult_sec_mult0000_Madd_lut[3] ;
  wire \Mmult_sec_mult0000_Madd_lut[5] ;
  wire \Msub_msec0_xor<3>12 ;
  wire \Msub_msec0_xor<3>121 ;
  wire N0;
  wire N1;
  wire N100;
  wire N1001;
  wire N101;
  wire N102;
  wire N103;
  wire N104;
  wire N105;
  wire N1051;
  wire N106;
  wire N107;
  wire N108;
  wire N109;
  wire N11;
  wire N110;
  wire N111;
  wire N1111;
  wire N112;
  wire N113;
  wire N114;
  wire N115;
  wire N116;
  wire N117;
  wire N118;
  wire N14;
  wire N18;
  wire N2;
  wire N22;
  wire N23;
  wire N3;
  wire N36;
  wire N37;
  wire N38;
  wire N4;
  wire N41;
  wire N43;
  wire N47;
  wire N49;
  wire N5;
  wire N55;
  wire N57;
  wire N571;
  wire N6;
  wire N61;
  wire N63;
  wire N65;
  wire N67;
  wire N71;
  wire N75;
  wire N77;
  wire N79;
  wire N8;
  wire N81;
  wire N83;
  wire N85;
  wire N87;
  wire N871;
  wire N89;
  wire N93;
  wire N95;
  wire N97;
  wire N99;
  wire RESET_IBUF_170;
  wire S1_0_OBUF_175;
  wire S1_1_OBUF_176;
  wire S1_2_OBUF_177;
  wire S1_3_OBUF_178;
  wire S2_1_OBUF_183;
  wire S2_2_OBUF_184;
  wire S2_3_OBUF_185;
  wire SEL_0_IBUF_188;
  wire SEL_1_IBUF_189;
  wire X0_0_OBUF_194;
  wire X0_1_OBUF_195;
  wire X0_2_OBUF_196;
  wire X0_3_OBUF_197;
  wire X1_0_OBUF_202;
  wire X1_1_OBUF_203;
  wire X1_2_OBUF_204;
  wire X1_3_OBUF_205;
  wire X2_0_OBUF_210;
  wire X2_1_OBUF_211;
  wire X2_2_OBUF_212;
  wire X2_3_OBUF_213;
  wire hour_cmp_lt0000;
  wire \hour_mux0001<0>24_224 ;
  wire \hour_mux0001<1>111_226 ;
  wire \hour_mux0001<2>31_SW0 ;
  wire \hour_mux0001<2>31_SW01_229 ;
  wire hour_not0002;
  wire \min_mux0001<0>30_240 ;
  wire \min_mux0001<1>15_242 ;
  wire min_not0002;
  wire \msec1<0>130_248 ;
  wire \msec1<0>16_249 ;
  wire \msec1<0>50_250 ;
  wire \msec1<1>_SW2 ;
  wire \msec1<1>_SW21_252 ;
  wire \msec2<0>110_253 ;
  wire \msec2<0>14_254 ;
  wire \msec2<0>200_255 ;
  wire \msec2<0>200_SW0 ;
  wire \msec2<0>200_SW01_257 ;
  wire \msec2<0>225_258 ;
  wire \msec2<0>49 ;
  wire \msec2<0>491_260 ;
  wire \msec2<0>54_261 ;
  wire \msec2<0>7 ;
  wire \msec2<0>71_263 ;
  wire \msec2<1>51_264 ;
  wire \msec2<1>57_265 ;
  wire \msec2<1>66_266 ;
  wire msec_cmp_ge0000_inv;
  wire msec_cmp_ge0000_inv12_278;
  wire msec_cmp_ge0000_inv17_279;
  wire msec_cmp_ge0000_inv35_280;
  wire \sec_add0000[2] ;
  wire \sec_add0000[4] ;
  wire \sec_add0000[5] ;
  wire \sec_mux0001<1>14_311 ;
  wire sec_not0002;
  wire \NLW_Mmult_msect0_mult0000_P<35>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<34>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<33>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<32>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<31>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<30>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<29>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<28>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<27>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<26>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<25>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<24>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<23>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<22>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<21>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<20>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<19>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<18>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<17>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<16>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<15>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<14>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<13>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<12>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<11>_UNCONNECTED ;
  wire \NLW_Mmult_msect0_mult0000_P<10>_UNCONNECTED ;
  wire [2 : 1] Madd_add0000_addsub0000_cy;
  wire [3 : 1] Madd_add0000_addsub0000_lut;
  wire [3 : 3] Madd_sec_add0000_Madd_cy;
  wire [1 : 1] Madd_sec_add0000_Madd_lut;
  wire [8 : 0] Mcount_msec_cy;
  wire [9 : 0] Mcount_msec_lut;
  wire [2 : 2] Msub_min2_lut;
  wire [0 : 0] Msub_msec0_lut;
  wire [8 : 0] Msub_msect0_cy;
  wire [9 : 1] Msub_msect0_lut;
  wire [2 : 2] Msub_sec2_lut;
  wire [3 : 1] add0000_addsub0000;
  wire [4 : 0] hour;
  wire [4 : 0] hour_mux0001;
  wire [5 : 0] min;
  wire [5 : 0] min_mux0001;
  wire [9 : 0] msec;
  wire [9 : 1] msect0;
  wire [9 : 0] msect0_mult0000;
  wire [5 : 0] sec;
  wire [5 : 0] sec_mux0001;
  GND   XST_GND (
    .G(S1_3_OBUF_178)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  sec_0 (
    .C(CLK_BUFGP_1),
    .CE(sec_not0002),
    .CLR(RESET_IBUF_170),
    .D(sec_mux0001[5]),
    .Q(sec[0])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  sec_1 (
    .C(CLK_BUFGP_1),
    .CE(sec_not0002),
    .CLR(RESET_IBUF_170),
    .D(sec_mux0001[4]),
    .Q(sec[1])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  sec_2 (
    .C(CLK_BUFGP_1),
    .CE(sec_not0002),
    .CLR(RESET_IBUF_170),
    .D(sec_mux0001[3]),
    .Q(sec[2])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  sec_3 (
    .C(CLK_BUFGP_1),
    .CE(sec_not0002),
    .CLR(RESET_IBUF_170),
    .D(sec_mux0001[2]),
    .Q(sec[3])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  sec_4 (
    .C(CLK_BUFGP_1),
    .CE(sec_not0002),
    .CLR(RESET_IBUF_170),
    .D(sec_mux0001[1]),
    .Q(sec[4])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  sec_5 (
    .C(CLK_BUFGP_1),
    .CE(sec_not0002),
    .CLR(RESET_IBUF_170),
    .D(sec_mux0001[0]),
    .Q(sec[5])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  hour_0 (
    .C(CLK_BUFGP_1),
    .CE(hour_not0002),
    .CLR(RESET_IBUF_170),
    .D(hour_mux0001[4]),
    .Q(hour[0])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  hour_1 (
    .C(CLK_BUFGP_1),
    .CE(hour_not0002),
    .CLR(RESET_IBUF_170),
    .D(hour_mux0001[3]),
    .Q(hour[1])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  hour_2 (
    .C(CLK_BUFGP_1),
    .CE(hour_not0002),
    .CLR(RESET_IBUF_170),
    .D(hour_mux0001[2]),
    .Q(hour[2])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  hour_3 (
    .C(CLK_BUFGP_1),
    .CE(hour_not0002),
    .CLR(RESET_IBUF_170),
    .D(hour_mux0001[1]),
    .Q(hour[3])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  hour_4 (
    .C(CLK_BUFGP_1),
    .CE(hour_not0002),
    .CLR(RESET_IBUF_170),
    .D(hour_mux0001[0]),
    .Q(hour[4])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  min_0 (
    .C(CLK_BUFGP_1),
    .CE(min_not0002),
    .CLR(RESET_IBUF_170),
    .D(min_mux0001[5]),
    .Q(min[0])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  min_1 (
    .C(CLK_BUFGP_1),
    .CE(min_not0002),
    .CLR(RESET_IBUF_170),
    .D(min_mux0001[4]),
    .Q(min[1])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  min_2 (
    .C(CLK_BUFGP_1),
    .CE(min_not0002),
    .CLR(RESET_IBUF_170),
    .D(min_mux0001[3]),
    .Q(min[2])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  min_3 (
    .C(CLK_BUFGP_1),
    .CE(min_not0002),
    .CLR(RESET_IBUF_170),
    .D(min_mux0001[2]),
    .Q(min[3])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  min_4 (
    .C(CLK_BUFGP_1),
    .CE(min_not0002),
    .CLR(RESET_IBUF_170),
    .D(min_mux0001[1]),
    .Q(min[4])
  );
  FDCE_1 #(
    .INIT ( 1'b0 ))
  min_5 (
    .C(CLK_BUFGP_1),
    .CE(min_not0002),
    .CLR(RESET_IBUF_170),
    .D(min_mux0001[0]),
    .Q(min[5])
  );
  MULT18X18   Mmult_msect0_mult0000 (
    .A({S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, 
S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, X2_3_OBUF_213, X2_2_OBUF_212, X2_1_OBUF_211, X2_0_OBUF_210}),
    .B({S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, S1_3_OBUF_178, 
S1_3_OBUF_178, S1_3_OBUF_178, N1, N1, S1_3_OBUF_178, S1_3_OBUF_178, N1, S1_3_OBUF_178, S1_3_OBUF_178}),
    .P({\NLW_Mmult_msect0_mult0000_P<35>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<34>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<33>_UNCONNECTED , 
\NLW_Mmult_msect0_mult0000_P<32>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<31>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<30>_UNCONNECTED , 
\NLW_Mmult_msect0_mult0000_P<29>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<28>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<27>_UNCONNECTED , 
\NLW_Mmult_msect0_mult0000_P<26>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<25>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<24>_UNCONNECTED , 
\NLW_Mmult_msect0_mult0000_P<23>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<22>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<21>_UNCONNECTED , 
\NLW_Mmult_msect0_mult0000_P<20>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<19>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<18>_UNCONNECTED , 
\NLW_Mmult_msect0_mult0000_P<17>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<16>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<15>_UNCONNECTED , 
\NLW_Mmult_msect0_mult0000_P<14>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<13>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<12>_UNCONNECTED , 
\NLW_Mmult_msect0_mult0000_P<11>_UNCONNECTED , \NLW_Mmult_msect0_mult0000_P<10>_UNCONNECTED , msect0_mult0000[9], msect0_mult0000[8], 
msect0_mult0000[7], msect0_mult0000[6], msect0_mult0000[5], msect0_mult0000[4], msect0_mult0000[3], msect0_mult0000[2], msect0_mult0000[1], 
msect0_mult0000[0]})
  );
  MUXCY   \Mcount_msec_cy<0>  (
    .CI(msec_cmp_ge0000_inv),
    .DI(S1_3_OBUF_178),
    .S(Mcount_msec_lut[0]),
    .O(Mcount_msec_cy[0])
  );
  XORCY   \Mcount_msec_xor<0>  (
    .CI(msec_cmp_ge0000_inv),
    .LI(Mcount_msec_lut[0]),
    .O(Mcount_msec)
  );
  MUXCY   \Mcount_msec_cy<1>  (
    .CI(Mcount_msec_cy[0]),
    .DI(S1_3_OBUF_178),
    .S(Mcount_msec_lut[1]),
    .O(Mcount_msec_cy[1])
  );
  XORCY   \Mcount_msec_xor<1>  (
    .CI(Mcount_msec_cy[0]),
    .LI(Mcount_msec_lut[1]),
    .O(Mcount_msec1)
  );
  MUXCY   \Mcount_msec_cy<2>  (
    .CI(Mcount_msec_cy[1]),
    .DI(S1_3_OBUF_178),
    .S(Mcount_msec_lut[2]),
    .O(Mcount_msec_cy[2])
  );
  XORCY   \Mcount_msec_xor<2>  (
    .CI(Mcount_msec_cy[1]),
    .LI(Mcount_msec_lut[2]),
    .O(Mcount_msec2)
  );
  MUXCY   \Mcount_msec_cy<3>  (
    .CI(Mcount_msec_cy[2]),
    .DI(S1_3_OBUF_178),
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
    .DI(S1_3_OBUF_178),
    .S(Mcount_msec_lut[4]),
    .O(Mcount_msec_cy[4])
  );
  XORCY   \Mcount_msec_xor<4>  (
    .CI(Mcount_msec_cy[3]),
    .LI(Mcount_msec_lut[4]),
    .O(Mcount_msec4)
  );
  MUXCY   \Mcount_msec_cy<5>  (
    .CI(Mcount_msec_cy[4]),
    .DI(S1_3_OBUF_178),
    .S(Mcount_msec_lut[5]),
    .O(Mcount_msec_cy[5])
  );
  XORCY   \Mcount_msec_xor<5>  (
    .CI(Mcount_msec_cy[4]),
    .LI(Mcount_msec_lut[5]),
    .O(Mcount_msec5)
  );
  MUXCY   \Mcount_msec_cy<6>  (
    .CI(Mcount_msec_cy[5]),
    .DI(S1_3_OBUF_178),
    .S(Mcount_msec_lut[6]),
    .O(Mcount_msec_cy[6])
  );
  XORCY   \Mcount_msec_xor<6>  (
    .CI(Mcount_msec_cy[5]),
    .LI(Mcount_msec_lut[6]),
    .O(Mcount_msec6)
  );
  MUXCY   \Mcount_msec_cy<7>  (
    .CI(Mcount_msec_cy[6]),
    .DI(S1_3_OBUF_178),
    .S(Mcount_msec_lut[7]),
    .O(Mcount_msec_cy[7])
  );
  XORCY   \Mcount_msec_xor<7>  (
    .CI(Mcount_msec_cy[6]),
    .LI(Mcount_msec_lut[7]),
    .O(Mcount_msec7)
  );
  MUXCY   \Mcount_msec_cy<8>  (
    .CI(Mcount_msec_cy[7]),
    .DI(S1_3_OBUF_178),
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
  FDC #(
    .INIT ( 1'b0 ))
  msec_0 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_170),
    .D(Mcount_msec),
    .Q(msec[0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  msec_1 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_170),
    .D(Mcount_msec1),
    .Q(msec[1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  msec_2 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_170),
    .D(Mcount_msec2),
    .Q(msec[2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  msec_3 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_170),
    .D(Mcount_msec3),
    .Q(msec[3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  msec_4 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_170),
    .D(Mcount_msec4),
    .Q(msec[4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  msec_5 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_170),
    .D(Mcount_msec5),
    .Q(msec[5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  msec_6 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_170),
    .D(Mcount_msec6),
    .Q(msec[6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  msec_7 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_170),
    .D(Mcount_msec7),
    .Q(msec[7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  msec_8 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_170),
    .D(Mcount_msec8),
    .Q(msec[8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  msec_9 (
    .C(CLK_inv),
    .CLR(RESET_IBUF_170),
    .D(Mcount_msec9),
    .Q(msec[9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_msect0_lut<0>  (
    .I0(msec[0]),
    .I1(msect0_mult0000[0]),
    .O(Msub_msec0_lut[0])
  );
  MUXCY   \Msub_msect0_cy<0>  (
    .CI(N1),
    .DI(msec[0]),
    .S(Msub_msec0_lut[0]),
    .O(Msub_msect0_cy[0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_msect0_lut<1>  (
    .I0(msec[1]),
    .I1(msect0_mult0000[1]),
    .O(Msub_msect0_lut[1])
  );
  MUXCY   \Msub_msect0_cy<1>  (
    .CI(Msub_msect0_cy[0]),
    .DI(msec[1]),
    .S(Msub_msect0_lut[1]),
    .O(Msub_msect0_cy[1])
  );
  XORCY   \Msub_msect0_xor<1>  (
    .CI(Msub_msect0_cy[0]),
    .LI(Msub_msect0_lut[1]),
    .O(msect0[1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_msect0_lut<2>  (
    .I0(msec[2]),
    .I1(msect0_mult0000[2]),
    .O(Msub_msect0_lut[2])
  );
  MUXCY   \Msub_msect0_cy<2>  (
    .CI(Msub_msect0_cy[1]),
    .DI(msec[2]),
    .S(Msub_msect0_lut[2]),
    .O(Msub_msect0_cy[2])
  );
  XORCY   \Msub_msect0_xor<2>  (
    .CI(Msub_msect0_cy[1]),
    .LI(Msub_msect0_lut[2]),
    .O(msect0[2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_msect0_lut<3>  (
    .I0(msec[3]),
    .I1(msect0_mult0000[3]),
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
    .I1(msect0_mult0000[4]),
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
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_msect0_lut<5>  (
    .I0(msec[5]),
    .I1(msect0_mult0000[5]),
    .O(Msub_msect0_lut[5])
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
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_msect0_lut<6>  (
    .I0(msec[6]),
    .I1(msect0_mult0000[6]),
    .O(Msub_msect0_lut[6])
  );
  MUXCY   \Msub_msect0_cy<6>  (
    .CI(Msub_msect0_cy[5]),
    .DI(msec[6]),
    .S(Msub_msect0_lut[6]),
    .O(Msub_msect0_cy[6])
  );
  XORCY   \Msub_msect0_xor<6>  (
    .CI(Msub_msect0_cy[5]),
    .LI(Msub_msect0_lut[6]),
    .O(msect0[6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_msect0_lut<7>  (
    .I0(msec[7]),
    .I1(msect0_mult0000[7]),
    .O(Msub_msect0_lut[7])
  );
  MUXCY   \Msub_msect0_cy<7>  (
    .CI(Msub_msect0_cy[6]),
    .DI(msec[7]),
    .S(Msub_msect0_lut[7]),
    .O(Msub_msect0_cy[7])
  );
  XORCY   \Msub_msect0_xor<7>  (
    .CI(Msub_msect0_cy[6]),
    .LI(Msub_msect0_lut[7]),
    .O(msect0[7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_msect0_lut<8>  (
    .I0(msec[8]),
    .I1(msect0_mult0000[8]),
    .O(Msub_msect0_lut[8])
  );
  MUXCY   \Msub_msect0_cy<8>  (
    .CI(Msub_msect0_cy[7]),
    .DI(msec[8]),
    .S(Msub_msect0_lut[8]),
    .O(Msub_msect0_cy[8])
  );
  XORCY   \Msub_msect0_xor<8>  (
    .CI(Msub_msect0_cy[7]),
    .LI(Msub_msect0_lut[8]),
    .O(msect0[8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_msect0_lut<9>  (
    .I0(msec[9]),
    .I1(msect0_mult0000[9]),
    .O(Msub_msect0_lut[9])
  );
  XORCY   \Msub_msect0_xor<9>  (
    .CI(Msub_msect0_cy[8]),
    .LI(Msub_msect0_lut[9]),
    .O(msect0[9])
  );
  MUXCY   \Madd_add0000_addsub0000_cy<1>  (
    .CI(S1_3_OBUF_178),
    .DI(msect0_mult0000[1]),
    .S(Madd_add0000_addsub0000_lut[1]),
    .O(Madd_add0000_addsub0000_cy[1])
  );
  XORCY   \Madd_add0000_addsub0000_xor<1>  (
    .CI(S1_3_OBUF_178),
    .LI(Madd_add0000_addsub0000_lut[1]),
    .O(add0000_addsub0000[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_add0000_addsub0000_lut<2>  (
    .I0(msect0_mult0000[2]),
    .I1(X1_1_OBUF_203),
    .O(Madd_add0000_addsub0000_lut[2])
  );
  MUXCY   \Madd_add0000_addsub0000_cy<2>  (
    .CI(Madd_add0000_addsub0000_cy[1]),
    .DI(msect0_mult0000[2]),
    .S(Madd_add0000_addsub0000_lut[2]),
    .O(Madd_add0000_addsub0000_cy[2])
  );
  XORCY   \Madd_add0000_addsub0000_xor<2>  (
    .CI(Madd_add0000_addsub0000_cy[1]),
    .LI(Madd_add0000_addsub0000_lut[2]),
    .O(add0000_addsub0000[2])
  );
  XORCY   \Madd_add0000_addsub0000_xor<3>  (
    .CI(Madd_add0000_addsub0000_cy[2]),
    .LI(Madd_add0000_addsub0000_lut[3]),
    .O(add0000_addsub0000[3])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \H1<1>11  (
    .I0(hour[4]),
    .I1(hour[2]),
    .I2(hour[3]),
    .O(H1_1_OBUF_23)
  );
  LUT4 #(
    .INIT ( 16'h6246 ))
  \H2<2>1  (
    .I0(hour[4]),
    .I1(hour[2]),
    .I2(hour[1]),
    .I3(hour[3]),
    .O(H2_2_OBUF_29)
  );
  LUT4 #(
    .INIT ( 16'hC210 ))
  \H2<3>1  (
    .I0(hour[1]),
    .I1(hour[2]),
    .I2(hour[3]),
    .I3(hour[4]),
    .O(H2_3_OBUF_30)
  );
  LUT4 #(
    .INIT ( 16'h98A6 ))
  \H2<1>1  (
    .I0(hour[1]),
    .I1(hour[4]),
    .I2(hour[2]),
    .I3(hour[3]),
    .O(H2_1_OBUF_28)
  );
  LUT4 #(
    .INIT ( 16'h2264 ))
  \H1<0>1  (
    .I0(hour[3]),
    .I1(hour[4]),
    .I2(hour[1]),
    .I3(hour[2]),
    .O(H1_0_OBUF_22)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \sec_mux0001<4>11  (
    .I0(sec[3]),
    .I1(sec[2]),
    .I2(sec[5]),
    .I3(sec[4]),
    .O(N11)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \sec1<2>1  (
    .I0(sec[5]),
    .I1(sec[3]),
    .I2(sec[4]),
    .O(S1_2_OBUF_177)
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
    .INIT ( 16'hAA30 ))
  \sec_mux0001<5>1  (
    .I0(DIN0_0_IBUF_7),
    .I1(sec[0]),
    .I2(N11),
    .I3(msec_cmp_ge0000_inv),
    .O(sec_mux0001[5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \sec_mux0001<4>_SW0  (
    .I0(sec[1]),
    .I1(sec[0]),
    .O(N0)
  );
  LUT4 #(
    .INIT ( 16'hAA30 ))
  \sec_mux0001<4>  (
    .I0(Madd_sec_add0000_Madd_lut[1]),
    .I1(N0),
    .I2(N11),
    .I3(msec_cmp_ge0000_inv),
    .O(sec_mux0001[4])
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \min_mux0001<0>211  (
    .I0(min[1]),
    .I1(min[0]),
    .I2(min[3]),
    .I3(min[2]),
    .O(N38)
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \sec_mux0001<3>  (
    .I0(\sec_add0000[2] ),
    .I1(N22),
    .I2(N118),
    .I3(msec_cmp_ge0000_inv),
    .O(sec_mux0001[3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \min_mux0001<4>_SW0  (
    .I0(min[1]),
    .I1(min[0]),
    .O(N4)
  );
  LUT4 #(
    .INIT ( 16'hAA30 ))
  \min_mux0001<4>  (
    .I0(Madd_sec_add0000_Madd_lut[1]),
    .I1(N4),
    .I2(hour_cmp_lt0000),
    .I3(N2),
    .O(min_mux0001[4])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \sec_mux0001<0>4_SW0  (
    .I0(sec[4]),
    .I1(sec[5]),
    .I2(sec[3]),
    .O(N6)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  hour_cmp_lt00001 (
    .I0(min[4]),
    .I1(min[5]),
    .I2(min[3]),
    .I3(N8),
    .O(hour_cmp_lt0000)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \min_mux0001<5>_SW0  (
    .I0(min[4]),
    .I1(min[2]),
    .I2(min[5]),
    .I3(min[3]),
    .O(N14)
  );
  LUT4 #(
    .INIT ( 16'hAA03 ))
  \min_mux0001<5>  (
    .I0(DIN0_0_IBUF_7),
    .I1(min[0]),
    .I2(N14),
    .I3(N2),
    .O(min_mux0001[5])
  );
  LUT4 #(
    .INIT ( 16'h2264 ))
  \sec1<1>1  (
    .I0(sec[4]),
    .I1(sec[5]),
    .I2(sec[2]),
    .I3(sec[3]),
    .O(S1_1_OBUF_176)
  );
  LUT4 #(
    .INIT ( 16'h2264 ))
  \min1<1>1  (
    .I0(min[4]),
    .I1(min[5]),
    .I2(min[2]),
    .I3(min[3]),
    .O(M1_1_OBUF_36)
  );
  LUT3 #(
    .INIT ( 8'h2F ))
  min_not00021 (
    .I0(SEL_0_IBUF_188),
    .I1(SEL_1_IBUF_189),
    .I2(N2),
    .O(min_not0002)
  );
  LUT4 #(
    .INIT ( 16'h222F ))
  hour_not00021 (
    .I0(SEL_1_IBUF_189),
    .I1(SEL_0_IBUF_188),
    .I2(hour_cmp_lt0000),
    .I3(N2),
    .O(hour_not0002)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \sec_mux0001<3>111  (
    .I0(sec[0]),
    .I1(sec[1]),
    .O(N71)
  );
  LUT4 #(
    .INIT ( 16'hF88F ))
  \hour_mux0001<3>_SW0  (
    .I0(hour[4]),
    .I1(hour[3]),
    .I2(hour[1]),
    .I3(hour[0]),
    .O(N23)
  );
  LUT4 #(
    .INIT ( 16'hAAA3 ))
  \hour_mux0001<3>  (
    .I0(Madd_sec_add0000_Madd_lut[1]),
    .I1(N23),
    .I2(hour_cmp_lt0000),
    .I3(N2),
    .O(hour_mux0001[3])
  );
  LUT3 #(
    .INIT ( 8'h18 ))
  \hour_mux0001<0>24  (
    .I0(N116),
    .I1(hour[4]),
    .I2(hour[3]),
    .O(\hour_mux0001<0>24_224 )
  );
  LUT4 #(
    .INIT ( 16'hAAAC ))
  \hour_mux0001<0>55  (
    .I0(\sec_add0000[4] ),
    .I1(\hour_mux0001<0>24_224 ),
    .I2(hour_cmp_lt0000),
    .I3(N2),
    .O(hour_mux0001[0])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \min_mux0001<1>15  (
    .I0(min[4]),
    .I1(N115),
    .I2(min[3]),
    .I3(N38),
    .O(\min_mux0001<1>15_242 )
  );
  LUT4 #(
    .INIT ( 16'hAAC0 ))
  \min_mux0001<1>37  (
    .I0(\sec_add0000[4] ),
    .I1(\min_mux0001<1>15_242 ),
    .I2(hour_cmp_lt0000),
    .I3(N2),
    .O(min_mux0001[1])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \sec_mux0001<1>30  (
    .I0(\sec_add0000[4] ),
    .I1(\sec_mux0001<1>14_311 ),
    .I2(N105),
    .I3(msec_cmp_ge0000_inv),
    .O(sec_mux0001[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mmult_sec_mult0000_Madd_lut<3>1  (
    .I0(\Mmult_sec_mult0000_Madd_lut[5] ),
    .I1(DIN1_0_IBUF_15),
    .O(\Mmult_sec_mult0000_Madd_lut[3] )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_sec_add0000_Madd_lut<1>1  (
    .I0(DIN1_0_IBUF_15),
    .I1(DIN0_1_IBUF_8),
    .O(Madd_sec_add0000_Madd_lut[1])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \min_mux0001<0>55  (
    .I0(\sec_add0000[5] ),
    .I1(\min_mux0001<0>30_240 ),
    .I2(N2),
    .O(min_mux0001[0])
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  msec_cmp_ge0000_inv17 (
    .I0(msec[9]),
    .I1(msec[7]),
    .I2(msec[5]),
    .I3(msec_cmp_ge0000_inv12_278),
    .O(msec_cmp_ge0000_inv17_279)
  );
  LUT4 #(
    .INIT ( 16'h007F ))
  msec_cmp_ge0000_inv35 (
    .I0(msec[1]),
    .I1(msec[0]),
    .I2(msec[2]),
    .I3(N117),
    .O(msec_cmp_ge0000_inv35_280)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  msec_cmp_ge0000_inv36 (
    .I0(msec_cmp_ge0000_inv17_279),
    .I1(msec_cmp_ge0000_inv35_280),
    .O(msec_cmp_ge0000_inv)
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \msec1<3>1  (
    .I0(msect0[6]),
    .I1(msect0[4]),
    .I2(msect0[5]),
    .I3(N100),
    .O(X1_3_OBUF_205)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \msec2<3>1  (
    .I0(msec[8]),
    .I1(msec[9]),
    .I2(N37),
    .O(X2_3_OBUF_213)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \msec2<1>21  (
    .I0(msec[5]),
    .I1(msec[6]),
    .I2(msec[7]),
    .O(N37)
  );
  LUT4 #(
    .INIT ( 16'h01FF ))
  \msec2<2>_SW0  (
    .I0(msec[6]),
    .I1(msec[4]),
    .I2(msec[5]),
    .I3(msec[7]),
    .O(N36)
  );
  LUT4 #(
    .INIT ( 16'h46CE ))
  \msec2<2>  (
    .I0(msec[8]),
    .I1(msec[9]),
    .I2(N36),
    .I3(N37),
    .O(X2_2_OBUF_212)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \msec2<1>51  (
    .I0(msec[7]),
    .I1(msec[3]),
    .I2(msec[4]),
    .I3(msec[5]),
    .O(\msec2<1>51_264 )
  );
  LUT4 #(
    .INIT ( 16'hA888 ))
  \msec2<1>57  (
    .I0(msec[9]),
    .I1(msec[5]),
    .I2(msec[3]),
    .I3(msec[4]),
    .O(\msec2<1>57_265 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \msec2<1>66  (
    .I0(msec[6]),
    .I1(\msec2<1>51_264 ),
    .I2(\msec2<1>57_265 ),
    .O(\msec2<1>66_266 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \msec1<0>51  (
    .I0(msect0[7]),
    .I1(msect0[8]),
    .I2(msect0[9]),
    .O(N100)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \msec1<0>144  (
    .I0(\msec1<0>16_249 ),
    .I1(\msec1<0>50_250 ),
    .I2(\msec1<0>130_248 ),
    .O(X1_0_OBUF_202)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \msec2<0>14  (
    .I0(msec[8]),
    .I1(N87),
    .I2(msec[2]),
    .I3(msec[5]),
    .O(\msec2<0>14_254 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \msec2<0>54  (
    .I0(msec[7]),
    .I1(\msec2<0>7 ),
    .I2(\msec2<0>14_254 ),
    .I3(\msec2<0>49 ),
    .O(\msec2<0>54_261 )
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \msec2<0>237  (
    .I0(msec[9]),
    .I1(\msec2<0>54_261 ),
    .I2(\msec2<0>110_253 ),
    .I3(\msec2<0>225_258 ),
    .O(X2_0_OBUF_210)
  );
  IBUF   RESET_IBUF (
    .I(RESET),
    .O(RESET_IBUF_170)
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
    .O(\Mmult_sec_mult0000_Madd_lut[5] )
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
    .O(SEL_1_IBUF_189)
  );
  IBUF   SEL_0_IBUF (
    .I(SEL[0]),
    .O(SEL_0_IBUF_188)
  );
  OBUF   H1_3_OBUF (
    .I(S1_3_OBUF_178),
    .O(H1[3])
  );
  OBUF   H1_2_OBUF (
    .I(S1_3_OBUF_178),
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
    .I(S1_3_OBUF_178),
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
    .I(S1_3_OBUF_178),
    .O(S1[3])
  );
  OBUF   S1_2_OBUF (
    .I(S1_2_OBUF_177),
    .O(S1[2])
  );
  OBUF   S1_1_OBUF (
    .I(S1_1_OBUF_176),
    .O(S1[1])
  );
  OBUF   S1_0_OBUF (
    .I(S1_0_OBUF_175),
    .O(S1[0])
  );
  OBUF   S2_3_OBUF (
    .I(S2_3_OBUF_185),
    .O(S2[3])
  );
  OBUF   S2_2_OBUF (
    .I(S2_2_OBUF_184),
    .O(S2[2])
  );
  OBUF   S2_1_OBUF (
    .I(S2_1_OBUF_183),
    .O(S2[1])
  );
  OBUF   S2_0_OBUF (
    .I(sec[0]),
    .O(S2[0])
  );
  OBUF   X0_3_OBUF (
    .I(X0_3_OBUF_197),
    .O(X0[3])
  );
  OBUF   X0_2_OBUF (
    .I(X0_2_OBUF_196),
    .O(X0[2])
  );
  OBUF   X0_1_OBUF (
    .I(X0_1_OBUF_195),
    .O(X0[1])
  );
  OBUF   X0_0_OBUF (
    .I(X0_0_OBUF_194),
    .O(X0[0])
  );
  OBUF   X1_3_OBUF (
    .I(X1_3_OBUF_205),
    .O(X1[3])
  );
  OBUF   X1_2_OBUF (
    .I(X1_2_OBUF_204),
    .O(X1[2])
  );
  OBUF   X1_1_OBUF (
    .I(X1_1_OBUF_203),
    .O(X1[1])
  );
  OBUF   X1_0_OBUF (
    .I(X1_0_OBUF_202),
    .O(X1[0])
  );
  OBUF   X2_3_OBUF (
    .I(X2_3_OBUF_213),
    .O(X2[3])
  );
  OBUF   X2_2_OBUF (
    .I(X2_2_OBUF_212),
    .O(X2[2])
  );
  OBUF   X2_1_OBUF (
    .I(X2_1_OBUF_211),
    .O(X2[1])
  );
  OBUF   X2_0_OBUF (
    .I(X2_0_OBUF_210),
    .O(X2[0])
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \hour_mux0001<4>_SW2  (
    .I0(hour[3]),
    .I1(hour[0]),
    .I2(hour[4]),
    .O(N41)
  );
  LUT4 #(
    .INIT ( 16'hAAAC ))
  \hour_mux0001<4>  (
    .I0(DIN0_0_IBUF_7),
    .I1(N41),
    .I2(hour_cmp_lt0000),
    .I3(N2),
    .O(hour_mux0001[4])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mcount_msec_lut<0>  (
    .I0(msec[0]),
    .I1(msec_cmp_ge0000_inv17_279),
    .I2(msec_cmp_ge0000_inv35_280),
    .O(Mcount_msec_lut[0])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mcount_msec_lut<1>  (
    .I0(msec[1]),
    .I1(msec_cmp_ge0000_inv17_279),
    .I2(msec_cmp_ge0000_inv35_280),
    .O(Mcount_msec_lut[1])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mcount_msec_lut<2>  (
    .I0(msec[2]),
    .I1(msec_cmp_ge0000_inv17_279),
    .I2(msec_cmp_ge0000_inv35_280),
    .O(Mcount_msec_lut[2])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mcount_msec_lut<3>  (
    .I0(msec[3]),
    .I1(msec_cmp_ge0000_inv17_279),
    .I2(msec_cmp_ge0000_inv35_280),
    .O(Mcount_msec_lut[3])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mcount_msec_lut<4>  (
    .I0(msec[4]),
    .I1(msec_cmp_ge0000_inv17_279),
    .I2(msec_cmp_ge0000_inv35_280),
    .O(Mcount_msec_lut[4])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mcount_msec_lut<5>  (
    .I0(msec[5]),
    .I1(msec_cmp_ge0000_inv17_279),
    .I2(msec_cmp_ge0000_inv35_280),
    .O(Mcount_msec_lut[5])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mcount_msec_lut<6>  (
    .I0(msec[6]),
    .I1(msec_cmp_ge0000_inv17_279),
    .I2(msec_cmp_ge0000_inv35_280),
    .O(Mcount_msec_lut[6])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mcount_msec_lut<7>  (
    .I0(msec[7]),
    .I1(msec_cmp_ge0000_inv17_279),
    .I2(msec_cmp_ge0000_inv35_280),
    .O(Mcount_msec_lut[7])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mcount_msec_lut<8>  (
    .I0(msec[8]),
    .I1(msec_cmp_ge0000_inv17_279),
    .I2(msec_cmp_ge0000_inv35_280),
    .O(Mcount_msec_lut[8])
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \sec_mux0001<0>65  (
    .I0(\sec_add0000[5] ),
    .I1(N43),
    .I2(N105),
    .I3(msec_cmp_ge0000_inv),
    .O(sec_mux0001[0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  msec_cmp_ge0000_inv36_SW0 (
    .I0(sec[5]),
    .I1(sec[4]),
    .O(N47)
  );
  LUT4 #(
    .INIT ( 16'hFFF7 ))
  \min_mux0001<0>1  (
    .I0(N47),
    .I1(N18),
    .I2(msec_cmp_ge0000_inv17_279),
    .I3(msec_cmp_ge0000_inv35_280),
    .O(N2)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mcount_msec_lut<9>  (
    .I0(msec[9]),
    .I1(msec_cmp_ge0000_inv17_279),
    .I2(msec_cmp_ge0000_inv35_280),
    .O(Mcount_msec_lut[9])
  );
  LUT4 #(
    .INIT ( 16'h111F ))
  sec_not00021 (
    .I0(SEL_0_IBUF_188),
    .I1(SEL_1_IBUF_189),
    .I2(msec_cmp_ge0000_inv17_279),
    .I3(msec_cmp_ge0000_inv35_280),
    .O(sec_not0002)
  );
  LUT4 #(
    .INIT ( 16'hEC00 ))
  \min_mux0001<0>1_SW0  (
    .I0(sec[1]),
    .I1(sec[2]),
    .I2(sec[0]),
    .I3(sec[3]),
    .O(N18)
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  msec_cmp_ge0000_inv36_SW1 (
    .I0(sec[2]),
    .I1(sec[0]),
    .I2(sec[1]),
    .O(N49)
  );
  LUT4 #(
    .INIT ( 16'hAAAC ))
  \hour_mux0001<1>53  (
    .I0(\hour_mux0001<1>111_226 ),
    .I1(N55),
    .I2(hour_cmp_lt0000),
    .I3(N2),
    .O(hour_mux0001[1])
  );
  LUT4 #(
    .INIT ( 16'hAAAC ))
  \hour_mux0001<2>62  (
    .I0(\sec_add0000[2] ),
    .I1(N571),
    .I2(hour_cmp_lt0000),
    .I3(N2),
    .O(hour_mux0001[2])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \msec2<1>27_SW0  (
    .I0(msec[5]),
    .I1(msec[6]),
    .O(N61)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \msec2<0>200  (
    .I0(msec[5]),
    .I1(msec[6]),
    .I2(N63),
    .O(\msec2<0>200_255 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \msec1<0>16_SW0  (
    .I0(msect0[2]),
    .I1(msect0[4]),
    .I2(msect0[1]),
    .O(N65)
  );
  LUT4 #(
    .INIT ( 16'hAEAA ))
  \msec1<0>16  (
    .I0(N100),
    .I1(msect0[5]),
    .I2(msect0[3]),
    .I3(N65),
    .O(\msec1<0>16_249 )
  );
  LUT4 #(
    .INIT ( 16'hAE8A ))
  \msec1<0>50_SW0  (
    .I0(msect0[3]),
    .I1(msect0[2]),
    .I2(msect0[4]),
    .I3(msect0[1]),
    .O(N67)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \msec1<0>50  (
    .I0(msect0[6]),
    .I1(msect0[5]),
    .I2(N67),
    .O(\msec1<0>50_250 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Madd_add0000_addsub0000_lut<3>  (
    .I0(msect0_mult0000[3]),
    .I1(X1_2_OBUF_204),
    .I2(X1_0_OBUF_202),
    .O(Madd_add0000_addsub0000_lut[3])
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \msec2<0>110_SW0  (
    .I0(msec[6]),
    .I1(msec[3]),
    .I2(msec[8]),
    .I3(msec[5]),
    .O(N75)
  );
  LUT4 #(
    .INIT ( 16'h0046 ))
  \msec2<0>110  (
    .I0(msec[7]),
    .I1(msec[9]),
    .I2(msec[4]),
    .I3(N75),
    .O(\msec2<0>110_253 )
  );
  LUT4 #(
    .INIT ( 16'hA888 ))
  \msec2<0>149_SW0  (
    .I0(msec[5]),
    .I1(msec[4]),
    .I2(msec[2]),
    .I3(msec[3]),
    .O(N77)
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \sec_mux0001<3>_SW0  (
    .I0(sec[2]),
    .I1(sec[0]),
    .I2(sec[1]),
    .O(N22)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \sec_mux0001<1>14_SW0  (
    .I0(sec[2]),
    .I1(sec[3]),
    .O(N79)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \sec_mux0001<0>52_SW0_SW0  (
    .I0(sec[2]),
    .I1(sec[3]),
    .I2(sec[4]),
    .O(N81)
  );
  LUT4 #(
    .INIT ( 16'hBDDD ))
  \min_mux0001<0>30_SW1  (
    .I0(min[5]),
    .I1(min[2]),
    .I2(min[0]),
    .I3(min[1]),
    .O(N83)
  );
  LUT4 #(
    .INIT ( 16'hEA80 ))
  \Madd_sec_add0000_Madd_xor<3>111  (
    .I0(DIN1_1_IBUF_16),
    .I1(DIN1_0_IBUF_15),
    .I2(DIN0_1_IBUF_8),
    .I3(DIN0_2_IBUF_9),
    .O(N111)
  );
  LUT4 #(
    .INIT ( 16'h7510 ))
  \Msub_msec0_xor<3>111  (
    .I0(msec[1]),
    .I1(msec[0]),
    .I2(msect0_mult0000[0]),
    .I3(add0000_addsub0000[1]),
    .O(N5)
  );
  LUT4 #(
    .INIT ( 16'h963C ))
  \Madd_sec_add0000_Madd_xor<2>11  (
    .I0(DIN1_0_IBUF_15),
    .I1(DIN0_2_IBUF_9),
    .I2(DIN1_1_IBUF_16),
    .I3(DIN0_1_IBUF_8),
    .O(\sec_add0000[2] )
  );
  LUT4 #(
    .INIT ( 16'h596D ))
  \Msub_sec2_lut<2>1  (
    .I0(sec[2]),
    .I1(sec[4]),
    .I2(sec[5]),
    .I3(sec[3]),
    .O(Msub_sec2_lut[2])
  );
  LUT4 #(
    .INIT ( 16'h596D ))
  \Msub_min2_lut<2>1  (
    .I0(min[2]),
    .I1(min[4]),
    .I2(min[5]),
    .I3(min[3]),
    .O(Msub_min2_lut[2])
  );
  LUT3 #(
    .INIT ( 8'h59 ))
  \Msub_sec2_xor<2>11  (
    .I0(Msub_sec2_lut[2]),
    .I1(S1_0_OBUF_175),
    .I2(sec[1]),
    .O(S2_2_OBUF_184)
  );
  LUT3 #(
    .INIT ( 8'h59 ))
  \Msub_min2_xor<2>11  (
    .I0(Msub_min2_lut[2]),
    .I1(M1_0_OBUF_35),
    .I2(min[1]),
    .O(M2_2_OBUF_43)
  );
  LUT4 #(
    .INIT ( 16'h4BB4 ))
  \Msub_msec0_xor<1>11  (
    .I0(msec[0]),
    .I1(msect0_mult0000[0]),
    .I2(add0000_addsub0000[1]),
    .I3(msec[1]),
    .O(X0_1_OBUF_195)
  );
  LUT4 #(
    .INIT ( 16'h5556 ))
  \Madd_add0000_addsub0000_lut<1>  (
    .I0(msect0_mult0000[1]),
    .I1(\msec1<0>16_249 ),
    .I2(\msec1<0>50_250 ),
    .I3(\msec1<0>130_248 ),
    .O(Madd_add0000_addsub0000_lut[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Msub_sec2_xor<1>11  (
    .I0(sec[1]),
    .I1(S1_0_OBUF_175),
    .O(S2_1_OBUF_183)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Msub_min2_xor<1>11  (
    .I0(min[1]),
    .I1(M1_0_OBUF_35),
    .O(M2_1_OBUF_42)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Msub_msec0_xor<0>11  (
    .I0(msec[0]),
    .I1(msect0_mult0000[0]),
    .O(X0_0_OBUF_194)
  );
  LUT4 #(
    .INIT ( 16'hADBD ))
  \msec1<2>_SW1  (
    .I0(msect0[6]),
    .I1(msect0[4]),
    .I2(msect0[5]),
    .I3(msect0[3]),
    .O(N85)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \msec1<2>  (
    .I0(msect0[7]),
    .I1(msect0[8]),
    .I2(msect0[9]),
    .I3(N85),
    .O(X1_2_OBUF_204)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \msec1<1>  (
    .I0(msect0[7]),
    .I1(msect0[8]),
    .I2(msect0[9]),
    .I3(N871),
    .O(X1_1_OBUF_203)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Msub_msec0_xor<2>11  (
    .I0(msec[2]),
    .I1(add0000_addsub0000[2]),
    .I2(N5),
    .O(X0_2_OBUF_196)
  );
  LUT4 #(
    .INIT ( 16'h2264 ))
  \msec2<0>225_SW0  (
    .I0(msec[8]),
    .I1(msec[7]),
    .I2(N77),
    .I3(msec[6]),
    .O(N89)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \msec2<0>225  (
    .I0(msec[9]),
    .I1(\msec2<0>200_255 ),
    .I2(N89),
    .O(\msec2<0>225_258 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \hour_mux0001<1>111  (
    .I0(\Mmult_sec_mult0000_Madd_lut[5] ),
    .I1(DIN1_0_IBUF_15),
    .I2(DIN0_3_IBUF_10),
    .I3(N111),
    .O(\hour_mux0001<1>111_226 )
  );
  LUT4 #(
    .INIT ( 16'h56F6 ))
  \Msub_sec2_xor<3>12_SW1  (
    .I0(S1_0_OBUF_175),
    .I1(sec[2]),
    .I2(Msub_sec2_lut[2]),
    .I3(sec[1]),
    .O(N93)
  );
  LUT4 #(
    .INIT ( 16'h6939 ))
  \Msub_sec2_xor<3>12  (
    .I0(sec[3]),
    .I1(N93),
    .I2(sec[5]),
    .I3(sec[4]),
    .O(S2_3_OBUF_185)
  );
  LUT4 #(
    .INIT ( 16'h56F6 ))
  \Msub_min2_xor<3>12_SW1  (
    .I0(M1_0_OBUF_35),
    .I1(min[2]),
    .I2(Msub_min2_lut[2]),
    .I3(min[1]),
    .O(N95)
  );
  LUT4 #(
    .INIT ( 16'h6939 ))
  \Msub_min2_xor<3>12  (
    .I0(min[3]),
    .I1(N95),
    .I2(min[5]),
    .I3(min[4]),
    .O(M2_3_OBUF_44)
  );
  LUT4 #(
    .INIT ( 16'h7EE8 ))
  \Madd_sec_add0000_Madd_xor<4>11_SW1  (
    .I0(DIN1_0_IBUF_15),
    .I1(\Mmult_sec_mult0000_Madd_lut[5] ),
    .I2(DIN0_3_IBUF_10),
    .I3(N111),
    .O(N97)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Madd_sec_add0000_Madd_xor<4>11  (
    .I0(DIN1_1_IBUF_16),
    .I1(DIN1_3_IBUF_17),
    .I2(N97),
    .O(\sec_add0000[4] )
  );
  LUT4 #(
    .INIT ( 16'hF660 ))
  \Madd_sec_add0000_Madd_cy<3>11  (
    .I0(\Mmult_sec_mult0000_Madd_lut[5] ),
    .I1(DIN1_0_IBUF_15),
    .I2(DIN0_3_IBUF_10),
    .I3(N111),
    .O(Madd_sec_add0000_Madd_cy[3])
  );
  BUFGP   CLK_BUFGP (
    .I(CLK),
    .O(CLK_BUFGP_1)
  );
  INV   CLK_inv1_INV_0 (
    .I(CLK_BUFGP_1),
    .O(CLK_inv)
  );
  MUXF5   \sec1<0>  (
    .I0(N99),
    .I1(N1001),
    .S(sec[3]),
    .O(S1_0_OBUF_175)
  );
  LUT4 #(
    .INIT ( 16'hBA9A ))
  \sec1<0>_F  (
    .I0(sec[5]),
    .I1(sec[2]),
    .I2(sec[4]),
    .I3(sec[1]),
    .O(N99)
  );
  LUT4 #(
    .INIT ( 16'hD998 ))
  \sec1<0>_G  (
    .I0(sec[5]),
    .I1(sec[4]),
    .I2(sec[2]),
    .I3(sec[1]),
    .O(N1001)
  );
  MUXF5   \min1<0>  (
    .I0(N101),
    .I1(N102),
    .S(min[3]),
    .O(M1_0_OBUF_35)
  );
  LUT4 #(
    .INIT ( 16'hBA9A ))
  \min1<0>_F  (
    .I0(min[5]),
    .I1(min[2]),
    .I2(min[4]),
    .I3(min[1]),
    .O(N101)
  );
  LUT4 #(
    .INIT ( 16'hD998 ))
  \min1<0>_G  (
    .I0(min[5]),
    .I1(min[4]),
    .I2(min[2]),
    .I3(min[1]),
    .O(N102)
  );
  MUXF5   \msec1<0>130  (
    .I0(N103),
    .I1(N104),
    .S(msect0[3]),
    .O(\msec1<0>130_248 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \msec1<0>130_F  (
    .I0(msect0[2]),
    .I1(msect0[4]),
    .I2(msect0[5]),
    .I3(msect0[6]),
    .O(N103)
  );
  LUT4 #(
    .INIT ( 16'h4B42 ))
  \msec1<0>130_G  (
    .I0(msect0[2]),
    .I1(msect0[4]),
    .I2(msect0[5]),
    .I3(msect0[1]),
    .O(N104)
  );
  MUXF5   \msec2<1>100  (
    .I0(N1051),
    .I1(N106),
    .S(msec[8]),
    .O(X2_1_OBUF_211)
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \msec2<1>100_F  (
    .I0(\msec2<1>66_266 ),
    .I1(msec[7]),
    .I2(msec[9]),
    .O(N1051)
  );
  LUT4 #(
    .INIT ( 16'h1517 ))
  \msec2<1>100_G  (
    .I0(msec[7]),
    .I1(msec[9]),
    .I2(N61),
    .I3(msec[4]),
    .O(N106)
  );
  MUXF5   \Madd_sec_add0000_Madd_xor<5>1  (
    .I0(N107),
    .I1(N108),
    .S(\Mmult_sec_mult0000_Madd_lut[5] ),
    .O(\sec_add0000[5] )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \Madd_sec_add0000_Madd_xor<5>1_F  (
    .I0(DIN1_3_IBUF_17),
    .I1(DIN1_1_IBUF_16),
    .I2(Madd_sec_add0000_Madd_cy[3]),
    .O(N107)
  );
  LUT4 #(
    .INIT ( 16'h8117 ))
  \Madd_sec_add0000_Madd_xor<5>1_G  (
    .I0(DIN1_3_IBUF_17),
    .I1(DIN1_1_IBUF_16),
    .I2(DIN1_0_IBUF_15),
    .I3(Madd_sec_add0000_Madd_cy[3]),
    .O(N108)
  );
  MUXF5   \sec_mux0001<2>  (
    .I0(N109),
    .I1(N110),
    .S(msec_cmp_ge0000_inv),
    .O(sec_mux0001[2])
  );
  LUT4 #(
    .INIT ( 16'h7014 ))
  \sec_mux0001<2>_F  (
    .I0(N6),
    .I1(sec[2]),
    .I2(sec[3]),
    .I3(N71),
    .O(N109)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \sec_mux0001<2>_G  (
    .I0(\Mmult_sec_mult0000_Madd_lut[3] ),
    .I1(DIN0_3_IBUF_10),
    .I2(N111),
    .O(N110)
  );
  MUXF5   \min_mux0001<2>  (
    .I0(N1111),
    .I1(N112),
    .S(N2),
    .O(min_mux0001[2])
  );
  LUT3 #(
    .INIT ( 8'h82 ))
  \min_mux0001<2>_F  (
    .I0(hour_cmp_lt0000),
    .I1(min[3]),
    .I2(N57),
    .O(N1111)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \min_mux0001<2>_G  (
    .I0(N111),
    .I1(\Mmult_sec_mult0000_Madd_lut[3] ),
    .I2(DIN0_3_IBUF_10),
    .O(N112)
  );
  MUXF5   \min_mux0001<3>  (
    .I0(N113),
    .I1(N114),
    .S(N2),
    .O(min_mux0001[3])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \min_mux0001<3>_F  (
    .I0(min[2]),
    .I1(min[1]),
    .I2(hour_cmp_lt0000),
    .I3(min[0]),
    .O(N113)
  );
  LUT4 #(
    .INIT ( 16'h963C ))
  \min_mux0001<3>_G  (
    .I0(DIN1_0_IBUF_15),
    .I1(DIN0_2_IBUF_9),
    .I2(DIN1_1_IBUF_16),
    .I3(DIN0_1_IBUF_8),
    .O(N114)
  );
  LUT4 #(
    .INIT ( 16'h9969 ))
  \Msub_msec0_xor<3>122  (
    .I0(add0000_addsub0000[3]),
    .I1(msec[3]),
    .I2(msec[2]),
    .I3(add0000_addsub0000[2]),
    .O(\Msub_msec0_xor<3>12 )
  );
  LUT4 #(
    .INIT ( 16'h4BB4 ))
  \Msub_msec0_xor<3>123  (
    .I0(msec[2]),
    .I1(add0000_addsub0000[2]),
    .I2(msec[3]),
    .I3(add0000_addsub0000[3]),
    .O(\Msub_msec0_xor<3>121 )
  );
  MUXF5   \Msub_msec0_xor<3>12_f5  (
    .I0(\Msub_msec0_xor<3>121 ),
    .I1(\Msub_msec0_xor<3>12 ),
    .S(N5),
    .O(X0_3_OBUF_197)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \msec2<0>71  (
    .I0(msec[2]),
    .I1(msec[3]),
    .I2(msec[4]),
    .I3(msec[5]),
    .O(\msec2<0>71_263 )
  );
  MUXF5   \msec2<0>7_f5  (
    .I0(\msec2<0>71_263 ),
    .I1(N1),
    .S(msec[6]),
    .O(\msec2<0>7 )
  );
  LUT4 #(
    .INIT ( 16'h0155 ))
  \msec2<0>491  (
    .I0(msec[7]),
    .I1(msec[5]),
    .I2(msec[4]),
    .I3(msec[6]),
    .O(\msec2<0>491_260 )
  );
  MUXF5   \msec2<0>49_f5  (
    .I0(\msec2<0>491_260 ),
    .I1(S1_3_OBUF_178),
    .S(msec[8]),
    .O(\msec2<0>49 )
  );
  LUT4 #(
    .INIT ( 16'h006A ))
  \hour_mux0001<2>31_SW01  (
    .I0(hour[2]),
    .I1(hour[0]),
    .I2(hour[1]),
    .I3(hour[3]),
    .O(\hour_mux0001<2>31_SW0 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \hour_mux0001<2>31_SW02  (
    .I0(hour[2]),
    .I1(hour[0]),
    .I2(hour[1]),
    .O(\hour_mux0001<2>31_SW01_229 )
  );
  MUXF5   \hour_mux0001<2>31_SW0_f5  (
    .I0(\hour_mux0001<2>31_SW01_229 ),
    .I1(\hour_mux0001<2>31_SW0 ),
    .S(hour[4]),
    .O(N571)
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
    .O(\msec2<0>200_SW01_257 )
  );
  MUXF5   \msec2<0>200_SW0_f5  (
    .I0(\msec2<0>200_SW01_257 ),
    .I1(\msec2<0>200_SW0 ),
    .S(msec[8]),
    .O(N63)
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
    .O(\msec1<1>_SW21_252 )
  );
  MUXF5   \msec1<1>_SW2_f5  (
    .I0(\msec1<1>_SW21_252 ),
    .I1(\msec1<1>_SW2 ),
    .S(msect0[6]),
    .O(N871)
  );
  LUT3_D #(
    .INIT ( 8'h7F ))
  \min_mux0001<2>111  (
    .I0(min[2]),
    .I1(min[1]),
    .I2(min[0]),
    .LO(N115),
    .O(N57)
  );
  LUT3_D #(
    .INIT ( 8'h7F ))
  \hour_mux0001<0>11  (
    .I0(hour[2]),
    .I1(hour[1]),
    .I2(hour[0]),
    .LO(N116),
    .O(N3)
  );
  LUT3_L #(
    .INIT ( 8'hEA ))
  hour_cmp_lt00001_SW0 (
    .I0(min[2]),
    .I1(min[1]),
    .I2(min[0]),
    .LO(N8)
  );
  LUT2_L #(
    .INIT ( 4'h7 ))
  msec_cmp_ge0000_inv12 (
    .I0(msec[6]),
    .I1(msec[8]),
    .LO(msec_cmp_ge0000_inv12_278)
  );
  LUT2_D #(
    .INIT ( 4'hE ))
  msec_cmp_ge00001111 (
    .I0(msec[3]),
    .I1(msec[4]),
    .LO(N117),
    .O(N87)
  );
  LUT4_D #(
    .INIT ( 16'h0007 ))
  \sec_mux0001<0>4  (
    .I0(N49),
    .I1(N6),
    .I2(msec_cmp_ge0000_inv17_279),
    .I3(msec_cmp_ge0000_inv35_280),
    .LO(N118),
    .O(N105)
  );
  LUT3_L #(
    .INIT ( 8'h21 ))
  \hour_mux0001<1>38_SW0  (
    .I0(N3),
    .I1(hour[4]),
    .I2(hour[3]),
    .LO(N55)
  );
  LUT4_L #(
    .INIT ( 16'hCC6C ))
  \sec_mux0001<1>14  (
    .I0(sec[0]),
    .I1(sec[4]),
    .I2(sec[1]),
    .I3(N79),
    .LO(\sec_mux0001<1>14_311 )
  );
  LUT4_L #(
    .INIT ( 16'h6AAA ))
  \sec_mux0001<0>52_SW0  (
    .I0(sec[5]),
    .I1(sec[0]),
    .I2(sec[1]),
    .I3(N81),
    .LO(N43)
  );
  LUT4_L #(
    .INIT ( 16'h4CEC ))
  \min_mux0001<0>30  (
    .I0(min[3]),
    .I1(min[5]),
    .I2(min[4]),
    .I3(N83),
    .LO(\min_mux0001<0>30_240 )
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

