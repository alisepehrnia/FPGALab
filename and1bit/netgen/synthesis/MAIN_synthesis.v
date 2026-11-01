////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: MAIN_synthesis.v
// /___/   /\     Timestamp: Thu Jun 18 18:14:50 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim MAIN.ngc MAIN_synthesis.v 
// Device	: xc3s400-5-pq208
// Input file	: MAIN.ngc
// Output file	: G:\FPGA\and1bit\netgen\synthesis\MAIN_synthesis.v
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
outx, ina, inb
);
  output [7 : 0] outx;
  input [3 : 0] ina;
  input [3 : 0] inb;
  wire N0;
  wire ina_0_IBUF_5;
  wire ina_1_IBUF_6;
  wire ina_2_IBUF_7;
  wire ina_3_IBUF_8;
  wire inb_0_IBUF_13;
  wire inb_1_IBUF_14;
  wire inb_2_IBUF_15;
  wire inb_3_IBUF_16;
  wire outx_0_OBUF_25;
  wire outx_1_OBUF_26;
  wire outx_2_OBUF_27;
  wire outx_3_OBUF_28;
  wire outx_4_OBUF_29;
  wire outx_5_OBUF_30;
  wire outx_6_OBUF_31;
  wire outx_7_OBUF_32;
  wire \NLW_Mmult_outx_P<35>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<34>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<33>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<32>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<31>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<30>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<29>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<28>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<27>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<26>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<25>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<24>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<23>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<22>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<21>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<20>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<19>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<18>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<17>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<16>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<15>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<14>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<13>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<12>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<11>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<10>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<9>_UNCONNECTED ;
  wire \NLW_Mmult_outx_P<8>_UNCONNECTED ;
  GND   XST_GND (
    .G(N0)
  );
  MULT18X18   Mmult_outx (
    .A({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, ina_3_IBUF_8, ina_2_IBUF_7, ina_1_IBUF_6, ina_0_IBUF_5}),
    .B({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, inb_3_IBUF_16, inb_2_IBUF_15, inb_1_IBUF_14, inb_0_IBUF_13}),
    .P({\NLW_Mmult_outx_P<35>_UNCONNECTED , \NLW_Mmult_outx_P<34>_UNCONNECTED , \NLW_Mmult_outx_P<33>_UNCONNECTED , \NLW_Mmult_outx_P<32>_UNCONNECTED 
, \NLW_Mmult_outx_P<31>_UNCONNECTED , \NLW_Mmult_outx_P<30>_UNCONNECTED , \NLW_Mmult_outx_P<29>_UNCONNECTED , \NLW_Mmult_outx_P<28>_UNCONNECTED , 
\NLW_Mmult_outx_P<27>_UNCONNECTED , \NLW_Mmult_outx_P<26>_UNCONNECTED , \NLW_Mmult_outx_P<25>_UNCONNECTED , \NLW_Mmult_outx_P<24>_UNCONNECTED , 
\NLW_Mmult_outx_P<23>_UNCONNECTED , \NLW_Mmult_outx_P<22>_UNCONNECTED , \NLW_Mmult_outx_P<21>_UNCONNECTED , \NLW_Mmult_outx_P<20>_UNCONNECTED , 
\NLW_Mmult_outx_P<19>_UNCONNECTED , \NLW_Mmult_outx_P<18>_UNCONNECTED , \NLW_Mmult_outx_P<17>_UNCONNECTED , \NLW_Mmult_outx_P<16>_UNCONNECTED , 
\NLW_Mmult_outx_P<15>_UNCONNECTED , \NLW_Mmult_outx_P<14>_UNCONNECTED , \NLW_Mmult_outx_P<13>_UNCONNECTED , \NLW_Mmult_outx_P<12>_UNCONNECTED , 
\NLW_Mmult_outx_P<11>_UNCONNECTED , \NLW_Mmult_outx_P<10>_UNCONNECTED , \NLW_Mmult_outx_P<9>_UNCONNECTED , \NLW_Mmult_outx_P<8>_UNCONNECTED , 
outx_7_OBUF_32, outx_6_OBUF_31, outx_5_OBUF_30, outx_4_OBUF_29, outx_3_OBUF_28, outx_2_OBUF_27, outx_1_OBUF_26, outx_0_OBUF_25})
  );
  IBUF   ina_3_IBUF (
    .I(ina[3]),
    .O(ina_3_IBUF_8)
  );
  IBUF   ina_2_IBUF (
    .I(ina[2]),
    .O(ina_2_IBUF_7)
  );
  IBUF   ina_1_IBUF (
    .I(ina[1]),
    .O(ina_1_IBUF_6)
  );
  IBUF   ina_0_IBUF (
    .I(ina[0]),
    .O(ina_0_IBUF_5)
  );
  IBUF   inb_3_IBUF (
    .I(inb[3]),
    .O(inb_3_IBUF_16)
  );
  IBUF   inb_2_IBUF (
    .I(inb[2]),
    .O(inb_2_IBUF_15)
  );
  IBUF   inb_1_IBUF (
    .I(inb[1]),
    .O(inb_1_IBUF_14)
  );
  IBUF   inb_0_IBUF (
    .I(inb[0]),
    .O(inb_0_IBUF_13)
  );
  OBUF   outx_7_OBUF (
    .I(outx_7_OBUF_32),
    .O(outx[7])
  );
  OBUF   outx_6_OBUF (
    .I(outx_6_OBUF_31),
    .O(outx[6])
  );
  OBUF   outx_5_OBUF (
    .I(outx_5_OBUF_30),
    .O(outx[5])
  );
  OBUF   outx_4_OBUF (
    .I(outx_4_OBUF_29),
    .O(outx[4])
  );
  OBUF   outx_3_OBUF (
    .I(outx_3_OBUF_28),
    .O(outx[3])
  );
  OBUF   outx_2_OBUF (
    .I(outx_2_OBUF_27),
    .O(outx[2])
  );
  OBUF   outx_1_OBUF (
    .I(outx_1_OBUF_26),
    .O(outx[1])
  );
  OBUF   outx_0_OBUF (
    .I(outx_0_OBUF_25),
    .O(outx[0])
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

