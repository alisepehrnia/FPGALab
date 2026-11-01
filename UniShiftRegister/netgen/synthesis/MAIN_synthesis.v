////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: MAIN_synthesis.v
// /___/   /\     Timestamp: Tue Jun 02 21:18:42 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim MAIN.ngc MAIN_synthesis.v 
// Device	: xc3s400-5-pq208
// Input file	: MAIN.ngc
// Output file	: G:\FPGA\UniShiftRegister\netgen\synthesis\MAIN_synthesis.v
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
  CLK, RESET, XOUT, AIN, CTRL
);
  input CLK;
  input RESET;
  output [3 : 0] XOUT;
  input [3 : 0] AIN;
  input [1 : 0] CTRL;
  wire AIN_0_IBUF_4;
  wire AIN_1_IBUF_5;
  wire AIN_2_IBUF_6;
  wire AIN_3_IBUF_7;
  wire CLK_BUFGP_9;
  wire CTRL_0_IBUF_12;
  wire CTRL_1_IBUF_13;
  wire N10;
  wire N11;
  wire N12;
  wire N13;
  wire N14;
  wire N15;
  wire N8;
  wire N9;
  wire RESET_IBUF_23;
  wire [3 : 0] q;
  wire [3 : 0] q_mux0000;
  FDC   q_0 (
    .C(CLK_BUFGP_9),
    .CLR(RESET_IBUF_23),
    .D(q_mux0000[0]),
    .Q(q[0])
  );
  FDC   q_1 (
    .C(CLK_BUFGP_9),
    .CLR(RESET_IBUF_23),
    .D(q_mux0000[1]),
    .Q(q[1])
  );
  FDC   q_2 (
    .C(CLK_BUFGP_9),
    .CLR(RESET_IBUF_23),
    .D(q_mux0000[2]),
    .Q(q[2])
  );
  FDC   q_3 (
    .C(CLK_BUFGP_9),
    .CLR(RESET_IBUF_23),
    .D(q_mux0000[3]),
    .Q(q[3])
  );
  IBUF   RESET_IBUF (
    .I(RESET),
    .O(RESET_IBUF_23)
  );
  IBUF   AIN_3_IBUF (
    .I(AIN[3]),
    .O(AIN_3_IBUF_7)
  );
  IBUF   AIN_2_IBUF (
    .I(AIN[2]),
    .O(AIN_2_IBUF_6)
  );
  IBUF   AIN_1_IBUF (
    .I(AIN[1]),
    .O(AIN_1_IBUF_5)
  );
  IBUF   AIN_0_IBUF (
    .I(AIN[0]),
    .O(AIN_0_IBUF_4)
  );
  IBUF   CTRL_1_IBUF (
    .I(CTRL[1]),
    .O(CTRL_1_IBUF_13)
  );
  IBUF   CTRL_0_IBUF (
    .I(CTRL[0]),
    .O(CTRL_0_IBUF_12)
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
  MUXF5   Mmux_q_mux0000_2_f5_0 (
    .I0(N8),
    .I1(N9),
    .S(CTRL_1_IBUF_13),
    .O(q_mux0000[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_q_mux0000_2_f5_0_F (
    .I0(CTRL_0_IBUF_12),
    .I1(q[2]),
    .I2(q[1]),
    .O(N8)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  Mmux_q_mux0000_2_f5_0_G (
    .I0(AIN_2_IBUF_6),
    .I1(CTRL_0_IBUF_12),
    .I2(q[3]),
    .O(N9)
  );
  MUXF5   Mmux_q_mux0000_2_f5 (
    .I0(N10),
    .I1(N11),
    .S(CTRL_1_IBUF_13),
    .O(q_mux0000[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_q_mux0000_2_f5_F (
    .I0(CTRL_0_IBUF_12),
    .I1(q[1]),
    .I2(q[0]),
    .O(N10)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  Mmux_q_mux0000_2_f5_G (
    .I0(AIN_1_IBUF_5),
    .I1(CTRL_0_IBUF_12),
    .I2(q[2]),
    .O(N11)
  );
  BUFGP   CLK_BUFGP (
    .I(CLK),
    .O(CLK_BUFGP_9)
  );
  MUXF5   Mmux_q_mux00005 (
    .I0(N12),
    .I1(N13),
    .S(q[3]),
    .O(q_mux0000[3])
  );
  LUT4 #(
    .INIT ( 16'hEC20 ))
  Mmux_q_mux00005_F (
    .I0(q[2]),
    .I1(CTRL_1_IBUF_13),
    .I2(CTRL_0_IBUF_12),
    .I3(AIN_3_IBUF_7),
    .O(N12)
  );
  LUT4 #(
    .INIT ( 16'hF5B1 ))
  Mmux_q_mux00005_G (
    .I0(CTRL_1_IBUF_13),
    .I1(CTRL_0_IBUF_12),
    .I2(AIN_3_IBUF_7),
    .I3(q[2]),
    .O(N13)
  );
  MUXF5   Mmux_q_mux00003 (
    .I0(N14),
    .I1(N15),
    .S(q[1]),
    .O(q_mux0000[0])
  );
  LUT4 #(
    .INIT ( 16'hF202 ))
  Mmux_q_mux00003_F (
    .I0(q[0]),
    .I1(CTRL_1_IBUF_13),
    .I2(CTRL_0_IBUF_12),
    .I3(AIN_0_IBUF_4),
    .O(N14)
  );
  LUT4 #(
    .INIT ( 16'hDDD8 ))
  Mmux_q_mux00003_G (
    .I0(CTRL_0_IBUF_12),
    .I1(AIN_0_IBUF_4),
    .I2(q[0]),
    .I3(CTRL_1_IBUF_13),
    .O(N15)
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

