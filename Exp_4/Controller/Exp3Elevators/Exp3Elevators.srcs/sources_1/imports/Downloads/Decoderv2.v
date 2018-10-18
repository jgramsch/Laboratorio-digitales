`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Digilent Inc 2011
// Engineer: Michelle Yu  
//				 Josh Sackos
// Create Date:    07/23/2012 
//
// Module Name:    Decoder
// Project Name:   PmodKYPD_Demo
// Target Devices: Nexys3
// Tool versions:  Xilinx ISE 14.1 
// Description: This file defines a component Decoder for the demo project PmodKYPD. The Decoder scans
//					 each column by asserting a low to the pin corresponding to the column at 1KHz. After a
//					 column is asserted low, each row pin is checked. When a row pin is detected to be low,
//					 the key that was pressed could be determined.
//
// Revision History: 
// 						Revision 0.01 - File Created (Michelle Yu)
//							Revision 0.02 - Converted from VHDL to Verilog (Josh Sackos)
//////////////////////////////////////////////////////////////////////////////////////////////////////////

// ==============================================================================================
// 												Define Module
// ==============================================================================================
module Decoder(
    clk,
    Row,
    Col,
    DecodeOut,
    KeyPress
    );

// ==============================================================================================
// 											Port Declarations
// ==============================================================================================
    input clk;						// 100MHz onboard clock
    input [3:0] Row;				// Rows on KYPD
    output [3:0] Col;			// Columns on KYPD
    output [3:0] DecodeOut;	// Output data
    output KeyPress;

// ==============================================================================================
// 							  		Parameters, Regsiters, and Wires
// ==============================================================================================
	
	// Output wires and registers
	reg [3:0] Col;
	reg [3:0] DecodeOut;
	
	// Count register
	reg [19:0] sclk;
	reg KeyPress;
	
	reg button_ff1 = 0; //button flip-flop for synchronization. Initialize it to 0
    reg button_ff2 = 0; //button flip-flop for synchronization. Initialize it to 0; //20 bits count for increment & decrement when button is pressed or released. Initialize it to 0
    reg m_Row;
    
    parameter M = 50_000_000;
    parameter tsh = 25_000_000;  // Threshold del debouncer.
    localparam N = $clog2(M);
    
    reg[N-1:0] divcounter = 0;

// ==============================================================================================
// 												Implementation
// ==============================================================================================
    always @(posedge clk) begin
    button_ff1 = Row;
    button_ff2 = button_ff1;
    m_Row = button_ff2;
    end

	always @(posedge clk) begin

			// 1ms
			if (sclk == 20'b00011000011010100000) begin
				//C1
				Col <= 4'b0111;
				sclk <= sclk + 1'b1;
			end
			
			// check row pins
			else if(sclk == 20'b00011000011010101000) begin
				//R1
				if (m_Row == 4'b0111) begin
				    divcounter <= (m_Row == 4'b0111)? (divcounter < M)? divcounter + 1: M-1: (divcounter > 0)? divcounter -1: 1; 
					DecodeOut <= (divcounter > tsh)? 4'b0001: 4'b0000;		//1  A1-> P-1
				    KeyPress <= (divcounter > tsh)? 1'b1: 1'b0;
				end
				//R2
				else if(m_Row == 4'b1011) begin
				    divcounter <= (m_Row == 4'b1011)? (divcounter < M)? divcounter + 1: M-1: (divcounter > 0)? divcounter -1: 1; 
                    DecodeOut <= (divcounter > tsh)? 4'b0100: 4'b0000;        //4  A2 -> P-1
                    KeyPress <= (divcounter > tsh)? 1'b1: 1'b0;
				end
				//R3
				else if(m_Row == 4'b1101) begin
				    divcounter <= (m_Row == 4'b1101)? (divcounter < M)? divcounter + 1: M-1: (divcounter > 0)? divcounter -1: 1; 
                    DecodeOut <= (divcounter > tsh)? 4'b0111: 4'b0000;        //7  P3 Down
                    KeyPress <= (divcounter > tsh)? 1'b1: 1'b0;
				end
				//R4
				else if(m_Row == 4'b1110) begin
				    divcounter <= (m_Row == 4'b1110)? (divcounter < M)? divcounter + 1: M-1: (divcounter > 0)? divcounter -1: 1; 
                    DecodeOut <= (divcounter > tsh)? 4'b0000: 4'b0000;        //0  P-1 Up
                    KeyPress <= (divcounter > tsh)? 1'b1: 1'b0;
				end
				sclk <= sclk + 1'b1;
			end

			// 2ms
			else if(sclk == 20'b00110000110101000000) begin
				//C2
				Col<= 4'b1011;
				sclk <= sclk + 1'b1;
			end
			
			// check row pins
			else if(sclk == 20'b00110000110101001000) begin
				//R1
				if (m_Row == 4'b0111) begin
				    divcounter <= (m_Row == 4'b0111)? (divcounter < M)? divcounter + 1: M-1: (divcounter > 0)? divcounter -1: 1; 
                    DecodeOut <= (divcounter > tsh)? 4'b0010: 4'b0000;      
                    KeyPress <= (divcounter > tsh)? 1'b1: 1'b0;
				end
				//R2
				else if(m_Row == 4'b1011) begin
				    divcounter <= (m_Row == 4'b1011)? (divcounter < M)? divcounter + 1: M-1: (divcounter > 0)? divcounter -1: 1; 
                    DecodeOut <= (divcounter > tsh)? 4'b0101: 4'b0000;        //0  P-1 Up
                    KeyPress <= (divcounter > tsh)? 1'b1: 1'b0;
				end
				//R3
				else if(m_Row == 4'b1101) begin
				    divcounter <= (m_Row == 4'b1101)? (divcounter < M)? divcounter + 1: M-1: (divcounter > 0)? divcounter -1: 1; 
                    DecodeOut <= (divcounter > tsh)? 4'b1000: 4'b0000;        //0  P-1 Up
                    KeyPress <= (divcounter > tsh)? 1'b1: 1'b0;
				end
				//R4
				else if(m_Row == 4'b1110) begin
				    divcounter <= (m_Row == 4'b1110)? (divcounter < M)? divcounter + 1: M-1: (divcounter > 0)? divcounter -1: 1; 
                    DecodeOut <= (divcounter > tsh)? 4'b1111: 4'b0000;        //0  P-1 Up
                    KeyPress <= (divcounter > tsh)? 1'b1: 1'b0;
				end
				sclk <= sclk + 1'b1;
			end

			//3ms
			else if(sclk == 20'b01001001001111100000) begin
				//C3
				Col<= 4'b1101;
				sclk <= sclk + 1'b1;
			end
			
			// check row pins
			else if(sclk == 20'b01001001001111101000) begin
				//R1
				if(m_Row == 4'b0111) begin
				    divcounter <= (m_Row == 4'b0111)? (divcounter < M)? divcounter + 1: M-1: (divcounter > 0)? divcounter -1: 1; 
                    DecodeOut <= (divcounter > tsh)? 4'b0011: 4'b0000;        //0  P-1 Up
                    KeyPress <= (divcounter > tsh)? 1'b1: 1'b0;
				end
				//R2
				else if(m_Row == 4'b1011) begin
				    divcounter <= (m_Row == 4'b1011)? (divcounter < M)? divcounter + 1: M-1: (divcounter > 0)? divcounter -1: 1; 
                    DecodeOut <= (divcounter > tsh)? 4'b0110: 4'b0000;        //0  P-1 Up
                    KeyPress <= (divcounter > tsh)? 1'b1: 1'b0;
				end
				//R3
				else if(m_Row == 4'b1101) begin
				    divcounter <= (m_Row == 4'b1101)? (divcounter < M)? divcounter + 1: M-1: (divcounter > 0)? divcounter -1: 1; 
                    DecodeOut <= (divcounter > tsh)? 4'b1001: 4'b0000;        //0  P-1 Up
                    KeyPress <= (divcounter > tsh)? 1'b1: 1'b0;
				end
				//R4
				else if(m_Row == 4'b1110) begin
				    divcounter <= (m_Row == 4'b1110)? (divcounter < M)? divcounter + 1: M-1: (divcounter > 0)? divcounter -1: 1; 
                    DecodeOut <= (divcounter > tsh)? 4'b1110: 4'b0000;        //0  P-1 Up
                    KeyPress <= (divcounter > tsh)? 1'b1: 1'b0;
				end

				sclk <= sclk + 1'b1;
			end

			//4ms
			else if(sclk == 20'b01100001101010000000) begin
				//C4
				Col<= 4'b1110;
				sclk <= sclk + 1'b1;
			end

			// Check row pins
			else if(sclk == 20'b01100001101010001000) begin
				//R1
				if(m_Row == 4'b0111) begin
				    divcounter <= (m_Row == 4'b0111)? (divcounter < M)? divcounter + 1: M-1: (divcounter > 0)? divcounter -1: 1; 
                    DecodeOut <= (divcounter > tsh)? 4'b1010: 4'b0000;        //0  P-1 Up
                    KeyPress <= (divcounter > tsh)? 1'b1: 1'b0;
				end
				//R2
				else if(m_Row == 4'b1011) begin
				    divcounter <= (m_Row == 4'b1011)? (divcounter < M)? divcounter + 1: M-1: (divcounter > 0)? divcounter -1: 1; 
                    DecodeOut <= (divcounter > tsh)? 4'b1011: 4'b0000;        //0  P-1 Up
                    KeyPress <= (divcounter > tsh)? 1'b1: 1'b0;
				end
				//R3
				else if(m_Row == 4'b1101) begin
				    divcounter <= (m_Row == 4'b1101)? (divcounter < M)? divcounter + 1: M-1: (divcounter > 0)? divcounter -1: 1; 
                    DecodeOut <= (divcounter > tsh)? 4'b1100: 4'b0000;        //0  P-1 Up
                    KeyPress <= (divcounter > tsh)? 1'b1: 1'b0;
				end
				//R4
				else if(m_Row == 4'b1110) begin
				    divcounter <= (m_Row == 4'b1110)? (divcounter < M)? divcounter + 1: M-1: (divcounter > 0)? divcounter -1: 1; 
                    DecodeOut <= (divcounter > tsh)? 4'b1101: 4'b0000;        //0  P-1 Up
                    KeyPress <= (divcounter > tsh)? 1'b1: 1'b0;
				end
				sclk <= 20'b00000000000000000000;
			end

			// Otherwise increment
			else begin
				sclk <= sclk + 1'b1;
				KeyPress <= 1'b0;
			end
			
	end

endmodule
