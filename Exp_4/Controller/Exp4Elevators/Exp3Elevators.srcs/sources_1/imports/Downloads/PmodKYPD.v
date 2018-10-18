`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Digilent Inc 2011
// Engineer: Michelle Yu  
//				 Josh Sackos
// Create Date:    17:05:39 08/23/2011 
//
// Module Name:    PmodKYPD
// Project Name:   PmodKYPD_Demo
// Target Devices: Nexys3
// Tool versions:  Xilinx ISE 14.1 
// Description: This file defines a project that outputs the key pressed on the PmodKYPD to the 
//					 seven segment display.
//
// Revision History: 
// 						Revision 0.01 - File Created (Michelle Yu)
//							Revision 0.01 - Converted from VHDL to Verilog (Josh Sackos)
//////////////////////////////////////////////////////////////////////////////////////////////////////////

// ==============================================================================================
// 												Define Module
// ==============================================================================================
module PmodKYPD(
    input clk,
    inout[7:0] JA,
    output write,
    output[2:0] dir,  // 
    output [2:0] floor,
    output in
    );
	 
	 
// ==============================================================================================
// 											Port Declarations
// ==============================================================================================
// ==============================================================================================
// 							  		Parameters, Regsiters, and Wires
// ==============================================================================================
	
	// Output wires
	
	wire [3:0] Decode;
	wire new_dec;
	wire is_floor;

// ==============================================================================================
// 												Implementation
// ==============================================================================================

	//-----------------------------------------------
	//  						Decoder
	//-----------------------------------------------
	Decoder C0(
			.clk(clk),
			.Row(JA[7:4]),
			.Col(JA[3:0]),
			.DecodeOut(Decode),
			.KeyPress(in)
	);
	
	code_translate C1(
	               .clk(clk),
	               .code(Decode),
	               .new_code(new_dec),
	               .is_floor(is_floor)
	);
assign write = (is_floor == 1'b0)? 1:0;
assign floor = (is_floor == 1'b1)? new_dec:0;
assign dir = (is_floor == 1'b0)? new_dec:0;

endmodule
