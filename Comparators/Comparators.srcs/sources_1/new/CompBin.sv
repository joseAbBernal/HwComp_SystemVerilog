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
    input clk,                              /*Clock signal input*/
    input rst,                              /*Reset signal input*/
    input [7:0] A,                          /*Input A*/
    input [7:0] B,                          /*Input B*/
    output reg [7:0] S                      /*Output S*/
    );
    
    always @ (posedge clk) begin
        if (rst) begin
            S <= 8'b0;                      /*Set the output value to 0 i.e. 0x00*/
        end else begin
            if (A >= B) begin               /*Comapre input A and B if A greater than B*/
                S <= A;                     /*Set A input as the greatest value even if A==B*/
            end else begin                  /*else case B is greater than A*/
                S <= B;                     /*Set B input as the greatest value*/
            end;
        end;
    end;
endmodule