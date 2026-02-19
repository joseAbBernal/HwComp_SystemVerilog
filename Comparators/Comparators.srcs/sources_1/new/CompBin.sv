`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2026 01:03:02 PM
// Design Name: 
// Module Name: CompBin
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


module CompBin(
    input clk,                      /*Clock signal input*/
    input rst,                      /*Reset signal input*/
    input [7:0] A,                  /*Input A*/
    input [7:0] B,                  /*Input B*/
    output [7:0] S                  /*Output S*/
    );
    
    reg [7:0] Ss;                   /*Result register*/
    
    always @ (posedge clk) begin
        if (rst) begin
            Ss <= 8'bz;             /*Set the output value to High Z*/
        end else begin
            if (A >= B) begin       /*Comapre input A and B if A greater than B*/
                Ss = A;             /*Set A input as the greatest value even if A==B*/
            end else begin          /*else case B is greater than A*/
                Ss = B;             /*Set B input as the greatest value*/
            end;
        end;
    end;
    
    assign S = Ss;                  /*Assign the result stored into Ss register to the output S*/
    
endmodule