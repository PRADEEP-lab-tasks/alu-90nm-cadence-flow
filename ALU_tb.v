`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Pradeep's World
// Engineer: PRADEEP L
// 
// Create Date: 12/30/2024 06:44:39 PM
// Design Name: Arithemati Logic Unit
// Module Name: ALU_tb
// Project Name: 

// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:Used only for simulation using ncsim launch
//////////////////////////////////////////////////////////////////////////////////


module ALU_tb();
reg [15:0]a,b;
reg en;
reg[3:0]opcode;
wire [31:0]result;
ALU dut(a,b,en,opcode,result);
integer i;
initial begin
for(i=0;i<20;i=i+1)
begin
a=$random();
b=$random();
en=1;
opcode=$random();
#10;
$display("a=%d,b=%d,en=%d,opcode=%b,result=%d",a,b,en,opcode,result);
#10;
end
end
initial begin
#200;
$finish();
end
endmodule
