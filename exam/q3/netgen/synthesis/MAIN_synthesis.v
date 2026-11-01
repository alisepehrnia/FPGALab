////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: MAIN_synthesis.v
// /___/   /\     Timestamp: Sat Jun 20 12:27:04 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim MAIN.ngc MAIN_synthesis.v 
// Device	: xc3s400-5-pq208
// Input file	: MAIN.ngc
// Output file	: G:\FPGA\FINAL_EXAM_Q3\netgen\synthesis\MAIN_synthesis.v
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
  CLK, CNT, RESET, OVF, XOUT
);
  input CLK;
  input CNT;
  input RESET;
  output OVF;
  output [3 : 0] XOUT;
  wire CLK_BUFGP_1;
  wire CNT_IBUF_3;
  wire N01;
  wire OVF_OBUF_6;
  wire RESET_IBUF_8;
  wire [3 : 0] q;
  wire [3 : 0] r_next;
  FDC   q_0 (
    .C(CLK_BUFGP_1),
    .CLR(RESET_IBUF_8),
    .D(r_next[0]),
    .Q(q[0])
  );
  FDC   q_1 (
    .C(CLK_BUFGP_1),
    .CLR(RESET_IBUF_8),
    .D(r_next[1]),
    .Q(q[1])
  );
  FDC   q_2 (
    .C(CLK_BUFGP_1),
    .CLR(RESET_IBUF_8),
    .D(r_next[2]),
    .Q(q[2])
  );
  FDC   q_3 (
    .C(CLK_BUFGP_1),
    .CLR(RESET_IBUF_8),
    .D(r_next[3]),
    .Q(q[3])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  OVF_cmp_eq00001 (
    .I0(q[1]),
    .I1(q[0]),
    .I2(q[3]),
    .I3(q[2]),
    .O(OVF_OBUF_6)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \r_next<1>1  (
    .I0(CNT_IBUF_3),
    .I1(q[0]),
    .I2(q[1]),
    .O(r_next[1])
  );
  LUT4 #(
    .INIT ( 16'h7E81 ))
  \r_next<2>1  (
    .I0(CNT_IBUF_3),
    .I1(q[0]),
    .I2(q[1]),
    .I3(q[2]),
    .O(r_next[2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \r_next<3>  (
    .I0(q[3]),
    .I1(N01),
    .O(r_next[3])
  );
  IBUF   CNT_IBUF (
    .I(CNT),
    .O(CNT_IBUF_3)
  );
  IBUF   RESET_IBUF (
    .I(RESET),
    .O(RESET_IBUF_8)
  );
  OBUF   OVF_OBUF (
    .I(OVF_OBUF_6),
    .O(OVF)
  );
  OBUF   XOUT_3_OBUF (
    .I(q[3]),
    .O(XOUT[3])
  );
  OBUF   XOUT_2_OBUF (
    .I(q[2]),
    .O(XOUT[2])
  );
  OBUF   XOUT_1_OBUF (
    .I(q[1]),
    .O(XOUT[1])
  );
  OBUF   XOUT_0_OBUF (
    .I(q[0]),
    .O(XOUT[0])
  );
  BUFGP   CLK_BUFGP (
    .I(CLK),
    .O(CLK_BUFGP_1)
  );
  INV   \r_next<0>1_INV_0  (
    .I(q[0]),
    .O(r_next[0])
  );
  LUT4_L #(
    .INIT ( 16'h7FFE ))
  \r_next<3>_SW0  (
    .I0(CNT_IBUF_3),
    .I1(q[2]),
    .I2(q[1]),
    .I3(q[0]),
    .LO(N01)
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

