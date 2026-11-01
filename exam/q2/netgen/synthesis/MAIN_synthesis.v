////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: MAIN_synthesis.v
// /___/   /\     Timestamp: Sat Jun 20 12:15:49 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim MAIN.ngc MAIN_synthesis.v 
// Device	: xc3s400-5-pq208
// Input file	: MAIN.ngc
// Output file	: G:\FPGA\FPGA_EXAM_Q2\netgen\synthesis\MAIN_synthesis.v
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
ROUT, CNT, RIN0, RIN1
);
  output [7 : 0] ROUT;
  input [2 : 0] CNT;
  input [7 : 0] RIN0;
  input [7 : 0] RIN1;
  wire \CNT<2>_6_f5_6 ;
  wire \CNT<2>_6_f51 ;
  wire \CNT<2>_6_f52 ;
  wire \CNT<2>_6_f53 ;
  wire \CNT<2>_6_f54 ;
  wire \CNT<2>_6_f55 ;
  wire \CNT<2>_6_f56 ;
  wire \CNT<2>_7_10 ;
  wire \CNT<2>_71_11 ;
  wire \CNT<2>_72_12 ;
  wire \CNT<2>_73_13 ;
  wire \CNT<2>_74_14 ;
  wire \CNT<2>_75_15 ;
  wire \CNT<2>_76_16 ;
  wire \CNT<2>_8_17 ;
  wire \CNT<2>_81_18 ;
  wire \CNT<2>_82_19 ;
  wire \CNT<2>_83_20 ;
  wire \CNT<2>_84_21 ;
  wire \CNT<2>_85_22 ;
  wire \CNT<2>_86_23 ;
  wire CNT_0_IBUF_24;
  wire CNT_1_IBUF_25;
  wire CNT_2_IBUF_26;
  wire Mmux_xout_6_f5_42;
  wire Mmux_xout_7_43;
  wire Mmux_xout_8_44;
  wire N01;
  wire N10;
  wire N12;
  wire N2;
  wire N4;
  wire N6;
  wire N8;
  wire RIN0_0_IBUF_60;
  wire RIN0_1_IBUF_61;
  wire RIN0_2_IBUF_62;
  wire RIN0_3_IBUF_63;
  wire RIN0_4_IBUF_64;
  wire RIN0_5_IBUF_65;
  wire RIN0_6_IBUF_66;
  wire RIN0_7_IBUF_67;
  wire RIN1_0_IBUF_76;
  wire RIN1_1_IBUF_77;
  wire RIN1_2_IBUF_78;
  wire RIN1_3_IBUF_79;
  wire RIN1_4_IBUF_80;
  wire RIN1_5_IBUF_81;
  wire RIN1_6_IBUF_82;
  wire RIN1_7_IBUF_83;
  wire ROUT_0_OBUF_92;
  wire ROUT_1_OBUF_93;
  wire ROUT_2_OBUF_94;
  wire ROUT_3_OBUF_95;
  wire ROUT_4_OBUF_96;
  wire ROUT_5_OBUF_97;
  wire ROUT_6_OBUF_98;
  wire ROUT_7_OBUF_99;
  wire xout_cmp_eq0000;
  wire xout_mux0002;
  wire [6 : 0] Maddsub_xout_addsub0000_cy;
  wire [7 : 0] Maddsub_xout_addsub0000_lut;
  wire [7 : 0] xout_addsub0000;
  wire [7 : 0] xout_mux0000;
  wire [7 : 7] xout_mux0001;
  LUT3 #(
    .INIT ( 8'h96 ))
  \Maddsub_xout_addsub0000_lut<0>  (
    .I0(xout_mux0000[0]),
    .I1(xout_mux0001[7]),
    .I2(xout_mux0002),
    .O(Maddsub_xout_addsub0000_lut[0])
  );
  MUXCY   \Maddsub_xout_addsub0000_cy<0>  (
    .CI(xout_mux0002),
    .DI(xout_mux0000[0]),
    .S(Maddsub_xout_addsub0000_lut[0]),
    .O(Maddsub_xout_addsub0000_cy[0])
  );
  XORCY   \Maddsub_xout_addsub0000_xor<0>  (
    .CI(xout_mux0002),
    .LI(Maddsub_xout_addsub0000_lut[0]),
    .O(xout_addsub0000[0])
  );
  MUXCY   \Maddsub_xout_addsub0000_cy<1>  (
    .CI(Maddsub_xout_addsub0000_cy[0]),
    .DI(xout_mux0000[1]),
    .S(Maddsub_xout_addsub0000_lut[1]),
    .O(Maddsub_xout_addsub0000_cy[1])
  );
  XORCY   \Maddsub_xout_addsub0000_xor<1>  (
    .CI(Maddsub_xout_addsub0000_cy[0]),
    .LI(Maddsub_xout_addsub0000_lut[1]),
    .O(xout_addsub0000[1])
  );
  MUXCY   \Maddsub_xout_addsub0000_cy<2>  (
    .CI(Maddsub_xout_addsub0000_cy[1]),
    .DI(xout_mux0000[2]),
    .S(Maddsub_xout_addsub0000_lut[2]),
    .O(Maddsub_xout_addsub0000_cy[2])
  );
  XORCY   \Maddsub_xout_addsub0000_xor<2>  (
    .CI(Maddsub_xout_addsub0000_cy[1]),
    .LI(Maddsub_xout_addsub0000_lut[2]),
    .O(xout_addsub0000[2])
  );
  MUXCY   \Maddsub_xout_addsub0000_cy<3>  (
    .CI(Maddsub_xout_addsub0000_cy[2]),
    .DI(xout_mux0000[3]),
    .S(Maddsub_xout_addsub0000_lut[3]),
    .O(Maddsub_xout_addsub0000_cy[3])
  );
  XORCY   \Maddsub_xout_addsub0000_xor<3>  (
    .CI(Maddsub_xout_addsub0000_cy[2]),
    .LI(Maddsub_xout_addsub0000_lut[3]),
    .O(xout_addsub0000[3])
  );
  MUXCY   \Maddsub_xout_addsub0000_cy<4>  (
    .CI(Maddsub_xout_addsub0000_cy[3]),
    .DI(xout_mux0000[4]),
    .S(Maddsub_xout_addsub0000_lut[4]),
    .O(Maddsub_xout_addsub0000_cy[4])
  );
  XORCY   \Maddsub_xout_addsub0000_xor<4>  (
    .CI(Maddsub_xout_addsub0000_cy[3]),
    .LI(Maddsub_xout_addsub0000_lut[4]),
    .O(xout_addsub0000[4])
  );
  MUXCY   \Maddsub_xout_addsub0000_cy<5>  (
    .CI(Maddsub_xout_addsub0000_cy[4]),
    .DI(xout_mux0000[5]),
    .S(Maddsub_xout_addsub0000_lut[5]),
    .O(Maddsub_xout_addsub0000_cy[5])
  );
  XORCY   \Maddsub_xout_addsub0000_xor<5>  (
    .CI(Maddsub_xout_addsub0000_cy[4]),
    .LI(Maddsub_xout_addsub0000_lut[5]),
    .O(xout_addsub0000[5])
  );
  MUXCY   \Maddsub_xout_addsub0000_cy<6>  (
    .CI(Maddsub_xout_addsub0000_cy[5]),
    .DI(xout_mux0000[6]),
    .S(Maddsub_xout_addsub0000_lut[6]),
    .O(Maddsub_xout_addsub0000_cy[6])
  );
  XORCY   \Maddsub_xout_addsub0000_xor<6>  (
    .CI(Maddsub_xout_addsub0000_cy[5]),
    .LI(Maddsub_xout_addsub0000_lut[6]),
    .O(xout_addsub0000[6])
  );
  XORCY   \Maddsub_xout_addsub0000_xor<7>  (
    .CI(Maddsub_xout_addsub0000_cy[6]),
    .LI(Maddsub_xout_addsub0000_lut[7]),
    .O(xout_addsub0000[7])
  );
  MUXF5   \CNT<2>_6_f5_5  (
    .I0(\CNT<2>_86_23 ),
    .I1(\CNT<2>_76_16 ),
    .S(CNT_1_IBUF_25),
    .O(\CNT<2>_6_f56 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CNT<2>_76  (
    .I0(RIN0_6_IBUF_66),
    .I1(CNT_0_IBUF_24),
    .O(\CNT<2>_76_16 )
  );
  MUXF5   \CNT<2>_6_f5_4  (
    .I0(\CNT<2>_85_22 ),
    .I1(\CNT<2>_75_15 ),
    .S(CNT_1_IBUF_25),
    .O(\CNT<2>_6_f55 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CNT<2>_75  (
    .I0(CNT_0_IBUF_24),
    .I1(RIN0_5_IBUF_65),
    .I2(RIN0_7_IBUF_67),
    .O(\CNT<2>_75_15 )
  );
  MUXF5   \CNT<2>_6_f5_3  (
    .I0(\CNT<2>_84_21 ),
    .I1(\CNT<2>_74_14 ),
    .S(CNT_1_IBUF_25),
    .O(\CNT<2>_6_f54 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CNT<2>_74  (
    .I0(CNT_0_IBUF_24),
    .I1(RIN0_4_IBUF_64),
    .I2(RIN0_6_IBUF_66),
    .O(\CNT<2>_74_14 )
  );
  MUXF5   \CNT<2>_6_f5_2  (
    .I0(\CNT<2>_83_20 ),
    .I1(\CNT<2>_73_13 ),
    .S(CNT_1_IBUF_25),
    .O(\CNT<2>_6_f53 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CNT<2>_73  (
    .I0(CNT_0_IBUF_24),
    .I1(RIN0_3_IBUF_63),
    .I2(RIN0_5_IBUF_65),
    .O(\CNT<2>_73_13 )
  );
  MUXF5   \CNT<2>_6_f5_1  (
    .I0(\CNT<2>_82_19 ),
    .I1(\CNT<2>_72_12 ),
    .S(CNT_1_IBUF_25),
    .O(\CNT<2>_6_f52 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CNT<2>_72  (
    .I0(CNT_0_IBUF_24),
    .I1(RIN0_2_IBUF_62),
    .I2(RIN0_4_IBUF_64),
    .O(\CNT<2>_72_12 )
  );
  MUXF5   \CNT<2>_6_f5_0  (
    .I0(\CNT<2>_81_18 ),
    .I1(\CNT<2>_71_11 ),
    .S(CNT_1_IBUF_25),
    .O(\CNT<2>_6_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CNT<2>_71  (
    .I0(CNT_0_IBUF_24),
    .I1(RIN0_1_IBUF_61),
    .I2(RIN0_3_IBUF_63),
    .O(\CNT<2>_71_11 )
  );
  MUXF5   \CNT<2>_6_f5  (
    .I0(\CNT<2>_8_17 ),
    .I1(\CNT<2>_7_10 ),
    .S(CNT_1_IBUF_25),
    .O(\CNT<2>_6_f5_6 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CNT<2>_7  (
    .I0(CNT_0_IBUF_24),
    .I1(RIN0_0_IBUF_60),
    .I2(RIN0_2_IBUF_62),
    .O(\CNT<2>_7_10 )
  );
  MUXF5   Mmux_xout_6_f5 (
    .I0(Mmux_xout_8_44),
    .I1(Mmux_xout_7_43),
    .S(CNT_1_IBUF_25),
    .O(Mmux_xout_6_f5_42)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Mmux_xout_7 (
    .I0(RIN0_1_IBUF_61),
    .I1(CNT_0_IBUF_24),
    .O(Mmux_xout_7_43)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \xout_mux0000<7>1  (
    .I0(xout_cmp_eq0000),
    .I1(RIN0_7_IBUF_67),
    .I2(RIN1_7_IBUF_83),
    .O(xout_mux0000[7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CNT<2>8  (
    .I0(CNT_2_IBUF_26),
    .I1(xout_addsub0000[0]),
    .I2(Mmux_xout_6_f5_42),
    .O(ROUT_0_OBUF_92)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  xout_mux00022 (
    .I0(CNT_0_IBUF_24),
    .I1(CNT_1_IBUF_25),
    .I2(CNT_2_IBUF_26),
    .O(xout_mux0002)
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \xout_mux0001<7>1  (
    .I0(CNT_1_IBUF_25),
    .I1(CNT_2_IBUF_26),
    .I2(RIN1_0_IBUF_76),
    .O(xout_mux0001[7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \xout_mux0000<6>1  (
    .I0(xout_cmp_eq0000),
    .I1(RIN0_6_IBUF_66),
    .I2(RIN1_6_IBUF_82),
    .O(xout_mux0000[6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CNT<2>11  (
    .I0(CNT_2_IBUF_26),
    .I1(xout_addsub0000[1]),
    .I2(\CNT<2>_6_f5_6 ),
    .O(ROUT_1_OBUF_93)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \xout_mux0000<5>1  (
    .I0(xout_cmp_eq0000),
    .I1(RIN0_5_IBUF_65),
    .I2(RIN1_5_IBUF_81),
    .O(xout_mux0000[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CNT<2>21  (
    .I0(CNT_2_IBUF_26),
    .I1(xout_addsub0000[2]),
    .I2(\CNT<2>_6_f51 ),
    .O(ROUT_2_OBUF_94)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \xout_mux0000<4>1  (
    .I0(xout_cmp_eq0000),
    .I1(RIN0_4_IBUF_64),
    .I2(RIN1_4_IBUF_80),
    .O(xout_mux0000[4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CNT<2>31  (
    .I0(CNT_2_IBUF_26),
    .I1(xout_addsub0000[3]),
    .I2(\CNT<2>_6_f52 ),
    .O(ROUT_3_OBUF_95)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \xout_mux0000<3>1  (
    .I0(xout_cmp_eq0000),
    .I1(RIN0_3_IBUF_63),
    .I2(RIN1_3_IBUF_79),
    .O(xout_mux0000[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CNT<2>41  (
    .I0(CNT_2_IBUF_26),
    .I1(xout_addsub0000[4]),
    .I2(\CNT<2>_6_f53 ),
    .O(ROUT_4_OBUF_96)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \xout_mux0000<2>1  (
    .I0(xout_cmp_eq0000),
    .I1(RIN0_2_IBUF_62),
    .I2(RIN1_2_IBUF_78),
    .O(xout_mux0000[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CNT<2>51  (
    .I0(CNT_2_IBUF_26),
    .I1(xout_addsub0000[5]),
    .I2(\CNT<2>_6_f54 ),
    .O(ROUT_5_OBUF_97)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \xout_mux0000<1>1  (
    .I0(xout_cmp_eq0000),
    .I1(RIN0_1_IBUF_61),
    .I2(RIN1_1_IBUF_77),
    .O(xout_mux0000[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CNT<2>61  (
    .I0(CNT_2_IBUF_26),
    .I1(xout_addsub0000[6]),
    .I2(\CNT<2>_6_f55 ),
    .O(ROUT_6_OBUF_98)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  xout_cmp_eq00001 (
    .I0(CNT_0_IBUF_24),
    .I1(CNT_1_IBUF_25),
    .I2(CNT_2_IBUF_26),
    .O(xout_cmp_eq0000)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \xout_mux0000<0>1  (
    .I0(xout_cmp_eq0000),
    .I1(RIN0_0_IBUF_60),
    .I2(RIN1_0_IBUF_76),
    .O(xout_mux0000[0])
  );
  LUT3 #(
    .INIT ( 8'h72 ))
  \CNT<2>71  (
    .I0(CNT_2_IBUF_26),
    .I1(\CNT<2>_6_f56 ),
    .I2(xout_addsub0000[7]),
    .O(ROUT_7_OBUF_99)
  );
  IBUF   CNT_2_IBUF (
    .I(CNT[2]),
    .O(CNT_2_IBUF_26)
  );
  IBUF   CNT_1_IBUF (
    .I(CNT[1]),
    .O(CNT_1_IBUF_25)
  );
  IBUF   CNT_0_IBUF (
    .I(CNT[0]),
    .O(CNT_0_IBUF_24)
  );
  IBUF   RIN0_7_IBUF (
    .I(RIN0[7]),
    .O(RIN0_7_IBUF_67)
  );
  IBUF   RIN0_6_IBUF (
    .I(RIN0[6]),
    .O(RIN0_6_IBUF_66)
  );
  IBUF   RIN0_5_IBUF (
    .I(RIN0[5]),
    .O(RIN0_5_IBUF_65)
  );
  IBUF   RIN0_4_IBUF (
    .I(RIN0[4]),
    .O(RIN0_4_IBUF_64)
  );
  IBUF   RIN0_3_IBUF (
    .I(RIN0[3]),
    .O(RIN0_3_IBUF_63)
  );
  IBUF   RIN0_2_IBUF (
    .I(RIN0[2]),
    .O(RIN0_2_IBUF_62)
  );
  IBUF   RIN0_1_IBUF (
    .I(RIN0[1]),
    .O(RIN0_1_IBUF_61)
  );
  IBUF   RIN0_0_IBUF (
    .I(RIN0[0]),
    .O(RIN0_0_IBUF_60)
  );
  IBUF   RIN1_7_IBUF (
    .I(RIN1[7]),
    .O(RIN1_7_IBUF_83)
  );
  IBUF   RIN1_6_IBUF (
    .I(RIN1[6]),
    .O(RIN1_6_IBUF_82)
  );
  IBUF   RIN1_5_IBUF (
    .I(RIN1[5]),
    .O(RIN1_5_IBUF_81)
  );
  IBUF   RIN1_4_IBUF (
    .I(RIN1[4]),
    .O(RIN1_4_IBUF_80)
  );
  IBUF   RIN1_3_IBUF (
    .I(RIN1[3]),
    .O(RIN1_3_IBUF_79)
  );
  IBUF   RIN1_2_IBUF (
    .I(RIN1[2]),
    .O(RIN1_2_IBUF_78)
  );
  IBUF   RIN1_1_IBUF (
    .I(RIN1[1]),
    .O(RIN1_1_IBUF_77)
  );
  IBUF   RIN1_0_IBUF (
    .I(RIN1[0]),
    .O(RIN1_0_IBUF_76)
  );
  OBUF   ROUT_7_OBUF (
    .I(ROUT_7_OBUF_99),
    .O(ROUT[7])
  );
  OBUF   ROUT_6_OBUF (
    .I(ROUT_6_OBUF_98),
    .O(ROUT[6])
  );
  OBUF   ROUT_5_OBUF (
    .I(ROUT_5_OBUF_97),
    .O(ROUT[5])
  );
  OBUF   ROUT_4_OBUF (
    .I(ROUT_4_OBUF_96),
    .O(ROUT[4])
  );
  OBUF   ROUT_3_OBUF (
    .I(ROUT_3_OBUF_95),
    .O(ROUT[3])
  );
  OBUF   ROUT_2_OBUF (
    .I(ROUT_2_OBUF_94),
    .O(ROUT[2])
  );
  OBUF   ROUT_1_OBUF (
    .I(ROUT_1_OBUF_93),
    .O(ROUT[1])
  );
  OBUF   ROUT_0_OBUF (
    .I(ROUT_0_OBUF_92),
    .O(ROUT[0])
  );
  LUT3 #(
    .INIT ( 8'h17 ))
  \CNT<2>_86  (
    .I0(CNT_0_IBUF_24),
    .I1(RIN0_7_IBUF_67),
    .I2(RIN1_7_IBUF_83),
    .O(\CNT<2>_86_23 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \CNT<2>_85  (
    .I0(CNT_0_IBUF_24),
    .I1(RIN0_6_IBUF_66),
    .I2(RIN1_6_IBUF_82),
    .O(\CNT<2>_85_22 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \CNT<2>_84  (
    .I0(CNT_0_IBUF_24),
    .I1(RIN0_5_IBUF_65),
    .I2(RIN1_5_IBUF_81),
    .O(\CNT<2>_84_21 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \CNT<2>_83  (
    .I0(CNT_0_IBUF_24),
    .I1(RIN0_4_IBUF_64),
    .I2(RIN1_4_IBUF_80),
    .O(\CNT<2>_83_20 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \CNT<2>_82  (
    .I0(CNT_0_IBUF_24),
    .I1(RIN0_3_IBUF_63),
    .I2(RIN1_3_IBUF_79),
    .O(\CNT<2>_82_19 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \CNT<2>_81  (
    .I0(CNT_0_IBUF_24),
    .I1(RIN0_2_IBUF_62),
    .I2(RIN1_2_IBUF_78),
    .O(\CNT<2>_81_18 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \CNT<2>_8  (
    .I0(CNT_0_IBUF_24),
    .I1(RIN0_1_IBUF_61),
    .I2(RIN1_1_IBUF_77),
    .O(\CNT<2>_8_17 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  Mmux_xout_8 (
    .I0(CNT_0_IBUF_24),
    .I1(RIN0_0_IBUF_60),
    .I2(RIN1_0_IBUF_76),
    .O(Mmux_xout_8_44)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \Maddsub_xout_addsub0000_lut<1>_SW0  (
    .I0(CNT_1_IBUF_25),
    .I1(RIN1_1_IBUF_77),
    .I2(CNT_0_IBUF_24),
    .O(N01)
  );
  LUT4 #(
    .INIT ( 16'h93C6 ))
  \Maddsub_xout_addsub0000_lut<1>  (
    .I0(CNT_2_IBUF_26),
    .I1(xout_mux0000[1]),
    .I2(RIN1_1_IBUF_77),
    .I3(N01),
    .O(Maddsub_xout_addsub0000_lut[1])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \Maddsub_xout_addsub0000_lut<2>_SW0  (
    .I0(CNT_1_IBUF_25),
    .I1(RIN1_2_IBUF_78),
    .I2(CNT_0_IBUF_24),
    .O(N2)
  );
  LUT4 #(
    .INIT ( 16'h93C6 ))
  \Maddsub_xout_addsub0000_lut<2>  (
    .I0(CNT_2_IBUF_26),
    .I1(xout_mux0000[2]),
    .I2(RIN1_2_IBUF_78),
    .I3(N2),
    .O(Maddsub_xout_addsub0000_lut[2])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \Maddsub_xout_addsub0000_lut<3>_SW0  (
    .I0(CNT_1_IBUF_25),
    .I1(RIN1_3_IBUF_79),
    .I2(CNT_0_IBUF_24),
    .O(N4)
  );
  LUT4 #(
    .INIT ( 16'h93C6 ))
  \Maddsub_xout_addsub0000_lut<3>  (
    .I0(CNT_2_IBUF_26),
    .I1(xout_mux0000[3]),
    .I2(RIN1_3_IBUF_79),
    .I3(N4),
    .O(Maddsub_xout_addsub0000_lut[3])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \Maddsub_xout_addsub0000_lut<4>_SW0  (
    .I0(CNT_1_IBUF_25),
    .I1(RIN1_4_IBUF_80),
    .I2(CNT_0_IBUF_24),
    .O(N6)
  );
  LUT4 #(
    .INIT ( 16'h93C6 ))
  \Maddsub_xout_addsub0000_lut<4>  (
    .I0(CNT_2_IBUF_26),
    .I1(xout_mux0000[4]),
    .I2(RIN1_4_IBUF_80),
    .I3(N6),
    .O(Maddsub_xout_addsub0000_lut[4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \Maddsub_xout_addsub0000_lut<5>_SW0  (
    .I0(CNT_1_IBUF_25),
    .I1(RIN1_5_IBUF_81),
    .I2(CNT_0_IBUF_24),
    .O(N8)
  );
  LUT4 #(
    .INIT ( 16'h93C6 ))
  \Maddsub_xout_addsub0000_lut<5>  (
    .I0(CNT_2_IBUF_26),
    .I1(xout_mux0000[5]),
    .I2(RIN1_5_IBUF_81),
    .I3(N8),
    .O(Maddsub_xout_addsub0000_lut[5])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \Maddsub_xout_addsub0000_lut<6>_SW0  (
    .I0(CNT_1_IBUF_25),
    .I1(RIN1_6_IBUF_82),
    .I2(CNT_0_IBUF_24),
    .O(N10)
  );
  LUT4 #(
    .INIT ( 16'h93C6 ))
  \Maddsub_xout_addsub0000_lut<6>  (
    .I0(CNT_2_IBUF_26),
    .I1(xout_mux0000[6]),
    .I2(RIN1_6_IBUF_82),
    .I3(N10),
    .O(Maddsub_xout_addsub0000_lut[6])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \Maddsub_xout_addsub0000_lut<7>_SW0  (
    .I0(CNT_1_IBUF_25),
    .I1(RIN1_7_IBUF_83),
    .I2(CNT_0_IBUF_24),
    .O(N12)
  );
  LUT4 #(
    .INIT ( 16'h93C6 ))
  \Maddsub_xout_addsub0000_lut<7>  (
    .I0(CNT_2_IBUF_26),
    .I1(xout_mux0000[7]),
    .I2(RIN1_7_IBUF_83),
    .I3(N12),
    .O(Maddsub_xout_addsub0000_lut[7])
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

