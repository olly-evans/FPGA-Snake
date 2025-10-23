`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2025 12:08:23
// Design Name: 
// Module Name: tb_vga
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


module vga_tb();

reg clk;
reg rst;

reg [3:0] draw_r;
reg [3:0] draw_g;
reg [3:0] draw_b;


//wire [10:0] curr_x;
//wire [10:0] curr_y;
wire [3:0] pix_r,pix_g, pix_b;
wire hsync, vsync;

//initial 
initial begin
    #1
    clk=0;
    rst=0;
    draw_r = 4'b0000;
    draw_g = 4'b0000;
    draw_b = 4'b0000;
    
    #10
    rst=1;
  
end

//always
always begin
    #1 clk=~clk;
end



vga vga_inst(
    .clk(clk),
    .rst(rst),
    .draw_r(draw_r), 
    .draw_g(draw_g), 
    .draw_b(draw_b),
//    .curr_x(curr_x),
//    .curr_y(curr_y),
    .pix_r(pix_r),
    .pix_g(pix_g),
    .pix_b(pix_b),
    .hsync(hsync),
    .vsync(vsync)
);
endmodule
