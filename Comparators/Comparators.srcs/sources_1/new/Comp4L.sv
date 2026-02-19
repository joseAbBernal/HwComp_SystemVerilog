`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2026 05:24:41 PM
// Design Name: 
// Module Name: Comp4L
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


module Comp4L(
    input clk,              /*Clock input*/
    input rst,              /*Reset input*/
    input [7:0] AL,          /*Input A*/
    input [7:0] BL,          /*Input B*/
    input [7:0] CL,          /*Input C*/
    input [7:0] DL,          /*Input D*/
    output [7:0] SL          /*Output S*/
    );
    
    /*Signals or wires*/
    wire [7:0] S0;           /*Handle the result from comparing A,B*/
    wire [7:0] S1;           /*Hnadle the result from comparing C,D*/
    
    /*2 input comparator*/
    CompBinL CompBinL0(       /*Binary compartor to compare A,B*/
    .clk    (clk),          /*Clock signal input*/
    .rst    (rst),          /*Reset signal input*/
    .AL      (AL),            /*Input A*/
    .BL      (BL),            /*Input B*/
    .SL      (S0)            /*Output S0*/
    );
    
    /*2 input comparator*/
    CompBinL CompBinL1(       /*Binary compartor to compare C,D*/
    .clk    (clk),          /*Clock signal input*/
    .rst    (rst),          /*Reset signal input*/
    .AL      (CL),            /*Input C*/
    .BL      (DL),            /*Input D*/
    .SL      (S1)            /*Output S1*/
    );
    
    /*2 input comparator*/
    CompBinL CompBinL2(       /*Binary compartor to compare S0,S1*/
    .clk    (clk),          /*Clock signal input*/
    .rst    (rst),          /*Reset signal input*/
    .AL      (S0),           /*Input S0*/
    .BL      (S1),           /*Input S1*/
    .SL      (SL)             /*Output S*/
    );
endmodule
