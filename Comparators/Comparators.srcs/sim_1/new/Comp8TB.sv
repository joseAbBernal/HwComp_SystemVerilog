`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2026 10:37:00 AM
// Design Name: 
// Module Name: Comp8TB
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

//==============================================================================
// Testbench in System Verilog to Comparator 8 input in system verilog
// Comparator of 8 bits selects the greatest value of the inputs A,B,C,D,E,F,G,H
//==============================================================================

module Comp8TB;

    //============================================================================
    // Signals of the testbench
    //============================================================================
    logic       clk;        // Clock signal
    logic       rst;        // Reset signal
    logic [7:0] As;         // Input A 
    logic [7:0] Bs;         // Input B 
    logic [7:0] Cs;         // Input C 
    logic [7:0] Ds;         // Input D 
    logic [7:0] Es;         // Input E 
    logic [7:0] Fs;         // Input F 
    logic [7:0] Gs;         // Input G 
    logic [7:0] Hs;         // Input H 
    logic [7:0] Ss;         // Output S
    
    // Clock Period (10ns = 100MHz)
    localparam time clk_period = 10ns;

    //============================================================================
    // Device Under Test (DUT)
    //============================================================================
    
    Comp8 Comp8TB(        /*Binary compartor to compare S0,S1*/
    .clk    (clk),          /*Clock signal input*/
    .rst    (rst),          /*Reset signal input*/
    .A      (As),           /*Input As*/
    .B      (Bs),           /*Input Bs*/
    .C      (Cs),           /*Input Cs*/
    .D      (Ds),           /*Input Ds*/
    .E      (Es),           /*Input Es*/
    .F      (Fs),           /*Input Fs*/
    .G      (Gs),           /*Input Gs*/
    .H      (Hs),           /*Input Hs*/
    .S      (Ss)            /*Output S*/
    );

    //============================================================================
    // Clock Generator
    //============================================================================
    initial begin
        clk = 0;
        forever #(clk_period/2) clk = ~clk;
    end

    //============================================================================
    // Test cases
    //============================================================================

    initial begin
        //------------------------------------------------------------------
        // Signals
        //------------------------------------------------------------------
        rst = 1;
        As = 8'H00;
        Bs = 8'h00;
        #clk_period;
        rst = 0;
        
    end

endmodule
