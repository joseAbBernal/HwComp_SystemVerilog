`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2026 10:51:30 AM
// Design Name: 
// Module Name: Comp4
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


module Comp4(
    input clk,              /*Clock input*/
    input rst,              /*Reset input*/
    input [7:0] A,          /*Input A*/
    input [7:0] B,          /*Input B*/
    input [7:0] C,          /*Input C*/
    input [7:0] D,          /*Input D*/
    output [7:0] S          /*Output S*/
    );
    
    /*Signals or wires*/
    wire [7:0] S0;           /*Handle the result from comparing A,B*/
    wire [7:0] S1;           /*Hnadle the result from comparing C,D*/
    
    /*2 input comparator*/
    CompBin CompBin0(       /*Binary compartor to compare A,B*/
    .clk    (clk),          /*Clock signal input*/
    .rst    (rst),          /*Reset signal input*/
    .A      (A),            /*Input A*/
    .B      (B),            /*Input B*/
    .S      (S0)            /*Output S0*/
    );
    
    /*2 input comparator*/
    CompBin CompBin1(       /*Binary compartor to compare C,D*/
    .clk    (clk),          /*Clock signal input*/
    .rst    (rst),          /*Reset signal input*/
    .A      (C),            /*Input C*/
    .B      (D),            /*Input D*/
    .S      (S1)            /*Output S1*/
    );
    
    /*2 input comparator*/
    CompBin CompBin2(       /*Binary compartor to compare S0,S1*/
    .clk    (clk),          /*Clock signal input*/
    .rst    (rst),          /*Reset signal input*/
    .A      (S0),           /*Input S0*/
    .B      (S1),           /*Input S1*/
    .S      (S)             /*Output S*/
    );
endmodule