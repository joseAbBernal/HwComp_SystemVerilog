`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2026 11:11:34 AM
// Design Name: 
// Module Name: Comp8
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


module Comp8(
    input clk,
    input rst,
    input [7:0] A,
    input [7:0] B,
    input [7:0] C,
    input [7:0] D,
    input [7:0] E,
    input [7:0] F,
    input [7:0] G,
    input [7:0] H,
    output [7:0] S
    );
    
    /*Signals or wires*/
    wire [7:0] S0;
    wire [7:0] S1;
    
    /*4 input comparator*/
    Comp4 Comp4_0(
    .clk        (clk),        /*Clock input*/
    .rst        (rst),        /*Reset input*/
    .A          (A),          /*Input A*/
    .B          (B),          /*Input B*/
    .C          (C),          /*Input C*/
    .D          (D),          /*Input D*/
    .S          (S0)          /*Output S0*/
    );
    
    /*4 input comparator*/
    Comp4 Comp4_1(
    .clk        (clk),        /*Clock input*/
    .rst        (rst),        /*Reset input*/
    .A          (E),          /*Input E*/
    .B          (F),          /*Input F*/
    .C          (G),          /*Input G*/
    .D          (H),          /*Input H*/
    .S          (S1)          /*Output S1*/
    );
    
    /*2 input comparator*/
    CompBin CompBin(       /*Binary compartor to compare S0,S1*/
    .clk    (clk),          /*Clock signal input*/
    .rst    (rst),          /*Reset signal input*/
    .A      (S0),           /*Input S0*/
    .B      (S1),           /*Input S1*/
    .S      (S)             /*Output S*/
    );
endmodule