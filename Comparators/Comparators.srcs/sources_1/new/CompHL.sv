`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2026 07:10:10 PM
// Design Name: 
// Module Name: CompHL
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


module CompHL(
    input clk,          /*Clock input*/
    input rst,          /*Reset input*/
    /*Inputs to get the greatest value*/
    input [7:0] A,      /*A input*/
    input [7:0] B,      /*B input*/
    input [7:0] C,      /*C input*/
    input [7:0] D,      /*D input*/
    input [7:0] E,      /*E input*/
    input [7:0] F,      /*F input*/
    input [7:0] G,      /*G input*/
    input [7:0] H,      /*H input*/
    /*Inputs to get the lowest value*/
    input [7:0] AL,     /*AL input*/
    input [7:0] BL,     /*BL input*/
    input [7:0] CL,     /*CL input*/
    input [7:0] DL,     /*DL input*/
    /*Outputs*/
    output [7:0] SH,    /*SH outputs the highest value*/
    output [7:0] SL     /*Sl outputs the lowest value*/
    );
    
    /*Wires to connect the inputs to the comarators*/
    wire [7:0] As;      /**/
    wire [7:0] Bs;
    wire [7:0] Cs;
    wire [7:0] Ds;
    wire [7:0] Es;
    wire [7:0] Fs;
    wire [7:0] Gs;
    wire [7:0] Hs;
    wire [7:0] ALs;
    wire [7:0] BLs;
    wire [7:0] CLs;
    wire [7:0] DLs;
    
    /*assign wires to the comparator of 8 inputs*/
    assign As = A;
    assign Bs = B;
    assign Cs = C;
    assign Ds = D;
    assign Es = E;
    assign Fs = F;
    assign Gs = G;
    assign Hs = H;
    /*assign wires to the comparator of 4 inputs*/
    assign ALs = AL;
    assign BLs = BL;
    assign CLs = CL;
    assign DLs = DL;
    
    /*Comparator of 8 Inputs with 8-bit ea, and returns the highest value*/
    Comp8 Comp8_H(
    .clk    (clk),         /*Clock input*/
    .rst    (rst),         /*Reset input*/
    .A      (As),          /*A input*/
    .B      (Bs),          /*B input*/
    .C      (Cs),          /*C input*/
    .D      (Ds),          /*D input*/
    .E      (Es),          /*E input*/
    .F      (Fs),          /*F input*/
    .G      (Gs),          /*G input*/
    .H      (Hs),          /*H input*/
    .S      (SH)           /*S output*/
    );
    
    /*Comparator of 4 Inputs with 8-bit ea, and returns the lowest value*/
    Comp4L Comp4_L(
    .clk    (clk),         /*Clock input*/
    .rst    (rst),         /*Reset input*/
    .AL      (ALs),        /*A input*/
    .BL      (BLs),        /*B input*/
    .CL      (CLs),        /*C input*/
    .DL      (DLs),        /*D input*/
    .SL      (SL)          /*S output*/
    );
endmodule
