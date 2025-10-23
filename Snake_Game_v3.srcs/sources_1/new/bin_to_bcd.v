`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 12:21:21
// Design Name: 
// Module Name: bin_to_bcd
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


module bin_to_bcd(
    input [6:0] bin,
    output [3:0] hundreds,
    output [3:0] tens,
    output [3:0] ones
    );
    
    integer i;
    reg [18:0] shift_reg; // 7 bits binary + 3x4-bit BCD = 19 bits total
    
    always@(*) begin
        shift_reg=0;
        shift_reg[6:0]=bin;
        for (i=0; i<7; i=i+1) begin
            if (shift_reg[10:7] >=5) shift_reg[10:7] = shift_reg[10:7]+3; //ones
            if(shift_reg[14:11] >=5) shift_reg[14:11] = shift_reg[14:11]+3; //tens
            if(shift_reg[18:15] >=5) shift_reg[18:15] = shift_reg[18:15]+3; //hundreds
            
            shift_reg = shift_reg <<1;
        end    
    end 
    
    assign hundreds = shift_reg[18:15];
    assign tens = shift_reg[14:11];
    assign ones = shift_reg[10:7];
endmodule
