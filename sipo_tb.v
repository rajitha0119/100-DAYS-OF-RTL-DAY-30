`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 22:12:15
// Design Name: 
// Module Name: sipo_tb
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


module sipo_tb(

    );
    reg clk,d;
    wire [3:0]q;
    sipo uut(clk,d,q);
    initial begin
    clk=1'b0;
    forever #5 clk=~clk;
    end
    initial begin
    d=1'b1;
    #10 d=1'b0;
    #10 d=1'd1;
    #10 d=1'd1;
    end
endmodule
