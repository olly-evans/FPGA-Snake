`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2025 16:00:15
// Design Name: 
// Module Name: drawcontrol
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


module drawcontrol(
    input pixclk,
    input rst, 
    //Input snake & apple position logic at current X/Y
    input snakeBody,
    input snakeHead,
    input snake_died,
    input apple,
    input apple_valid,
    input [10:0] appleX,appleY,
    input [10:0] curr_x,
    input [10:0] curr_y,
    output [3:0] draw_r, 
    output [3:0] draw_g, 
    output [3:0] draw_b,
    output border
    );
   
   
reg [3:0] curr_r, curr_g,curr_b;

//------------------Border Logic------------------
//reg [3:0] bg_r, bg_g, bg_b;
reg curr_border;

always @ (posedge pixclk)begin
    curr_border<=(curr_x<10 && curr_y >100)||(curr_x>1420 && curr_y > 100)||(curr_y>100 && curr_y<110)||(curr_y>890); //x<10 or x>1430 OR y<10 or y>890    
end



//------------------Info Bar Logic------------------
reg curr_info;
parameter infoSizeX = 1440;
parameter infoSizeY = 100;

always @(posedge pixclk)begin
    curr_info <= curr_y < (infoSizeY - 1);
end


reg [17:0] addr_info;
wire [15:0] rom_pixel_info;

//Image Memory Block
blk_mem_gen_2 inst1
(
.clka(pixclk),
.addra(addr_info),
.douta(rom_pixel_info)
);

//------------------Apple Sprite Drawing------------------

//Signals for the image
    
parameter appleSizeX=20, appleSizeY=20;
reg [8:0] addr;
wire [15:0] rom_pixel;

//Image Memory Block
blk_mem_gen_1 inst
(
.clka(pixclk),
.addra(addr),
.douta(rom_pixel)
);



//------------------RGB Output Assignment------------------
parameter APPLE_R = 4'b1111, APPLE_G =4'b0000, APPLE_B = 4'b0000;
parameter SNAKE_R = 4'b0000, SNAKE_G =4'b1001, SNAKE_B = 4'b1111;
parameter BORDER_R = 4'b1111, BORDER_G =4'b1111, BORDER_B = 4'b1111;

always @(posedge pixclk) begin
     

//    if (apple) begin
//        curr_r <=APPLE_R;
//        curr_g <=APPLE_G;
//        curr_b <=APPLE_B;
//    end
    if (snakeHead||snakeBody) begin
        curr_r <=SNAKE_R;
        curr_g <=SNAKE_G;
        curr_b <=SNAKE_B;
    end
    
    else if (curr_border) begin
        curr_r <=BORDER_R;
        curr_g <=BORDER_G;
        curr_b <=BORDER_B;
    end
    
    else if (curr_info)begin
        curr_r <= rom_pixel_info[11:8];
        curr_g <= rom_pixel_info[7:4];
        curr_b <= rom_pixel_info[3:0];
        if ((curr_x == 1440) && (curr_y == 100)) addr_info <= 0;
        else addr_info <= curr_y*infoSizeX+ curr_x;
    end
    
    else if (!((curr_x < appleX) || (curr_x > appleX + appleSizeX - 1) ||
                    (curr_y < appleY) || (curr_y > appleY + appleSizeY - 1))) begin
        curr_r <= rom_pixel[11:8];
        curr_g <= rom_pixel[7:4];
        curr_b <= rom_pixel[3:0];
        if ((curr_x == appleX) && (curr_y == appleY))
            addr <= 0;
        else
            addr <= addr + 1;
    end     
    
    else if (!rst) begin
        curr_r <= 4'b0000;
        curr_g <= 4'b0000;
        curr_b <= 4'b0000;
        addr <= 0;
        addr_info <= 0;
    end    
    else begin 
        curr_r <= 4'b0000;
        curr_g <= 4'b0000;
        curr_b <= 4'b0000;
    end 
end


assign draw_r = curr_r;
assign draw_g = curr_g;
assign draw_b = curr_b;

assign border = curr_border;
    
endmodule
