`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2026 07:53:39 PM
// Design Name: 
// Module Name: CompHLTB
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
// Testbench in System Verilog to Comparator 12 input in system verilog
// Comparator of 8 bits selects the Highest and Lowest value of the inputs A,B,C,D,E,F,G,H,AL,BL,CL,DL
//==============================================================================

module CompHLTB;

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
    logic [7:0] ALs;         // Input AL 
    logic [7:0] BLs;         // Input BL 
    logic [7:0] CLs;         // Input CL 
    logic [7:0] DLs;         // Input DL 
    logic [7:0] SHs;         // Output SH
    logic [7:0] Sls;         // Output SL
    
    // Clock Period (10ns = 100MHz)
    localparam time clk_period = 10ns;

    //============================================================================
    // Device Under Test (DUT)
    //============================================================================

    CompHL CompHLTB(
    .clk    (clk),          /*Clock input*/
    .rst    (rst),          /*Reset input*/
    /*Inputs to get the greatest value*/
    .A      (As),      /*A input*/
    .B      (Bs),      /*B input*/
    .C      (Cs),      /*C input*/
    .D      (Ds),      /*D input*/
    .E      (Es),      /*E input*/
    .F      (Fs),      /*F input*/
    .G      (Gs),      /*G input*/
    .H      (Hs),      /*H input*/
    /*Inputs to get the lowest value*/
    .AL     (ALs),     /*AL input*/
    .BL     (BLs),     /*BL input*/
    .CL     (CLs),     /*CL input*/
    .DL     (DLs),     /*DL input*/
    /*Outputs*/
    .SH     (SHs),    /*SH outputs the highest value*/
    .SL     (SLs)     /*Sl outputs the lowest value*/
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
        Cs = 8'h00;
        Ds = 8'h00;
        Es = 8'h00;
        Fs = 8'h00;
        Gs = 8'h00;
        Hs = 8'h00;
        ALs = 8'h00;
        BLs = 8'h00;
        CLs = 8'h00;
        DLs = 8'h00;
        #clk_period;
        rst = 0;
        
    end

endmodule
