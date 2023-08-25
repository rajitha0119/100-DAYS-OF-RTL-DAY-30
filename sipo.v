`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 21:42:08
// Design Name: 
// Module Name: sipo
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

module d_ff(input clk,d,output reg q);
always@(posedge clk)
begin
q<=d;
end
endmodule
module sipo(
    input clk,
    input d,
    output [3:0] q
    );
   d_ff DFF1(clk,d,q[3]);
   d_ff DFF2(clk,q[3],q[2]);
   d_ff DFF3(clk,q[2],q[1]);
   d_ff DFF4(clk,q[1],q[0]);
endmodule
