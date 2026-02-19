`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2026 04:37:16 PM
// Design Name: 
// Module Name: CompBinL
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


module CompBinL(
    input clk,                      /*Clock signal input*/
    input rst,                      /*Reset signal input*/
    input [7:0] AL,                  /*Input A*/
    input [7:0] BL,                  /*Input B*/
    output [7:0] SL                  /*Output S*/
    );
    
    reg [7:0] Ss;                   /*Result register*/
    
    always @ (posedge clk) begin
        if (rst) begin
            Ss = 8'bz;              /*Set the output value to High Z*/
        end else begin
            if (AL <= BL) begin       /*Comapre input A and B if A small or equal to B*/
                Ss = AL;             /*Set A input as the smalles value even if A==B*/
            end else begin          /*else case B is smaller than A*/
                Ss = BL;             /*Set B input as the smallest value*/
            end;
        end;
    end;
    
    assign SL = Ss;                  /*Assign the result stored into Ss register to the output S*/
    
endmodule
