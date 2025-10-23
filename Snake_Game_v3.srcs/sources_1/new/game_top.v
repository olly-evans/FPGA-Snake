`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2025 15:23:55
// Design Name: 
// Module Name: game_top
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

module gametop(
    input clk,
    input rst,
    input [4:0] btn,
//    input [2:0] sw,
    output [3:0] pix_r,
    output [3:0] pix_g,
    output [3:0] pix_b,
    output hsync,
    output vsync,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output [7:0] an,
    output [13:0] LED,
    output [1:0] led_red
    );
    
   
//------------------CLOCKS------------------
wire pixclk;
reg [20:0] clk_div;
reg game_clk;

//Display clock generator
clk_wiz_0 inst(
// Clock out ports  
    .clk_out1(pixclk),
// Clock in ports
    .clk_in1(clk)
);
  
//Game clock generation
always@(posedge clk) begin
    if(!rst)begin
        clk_div<=0;
        game_clk<=0;
    end else begin
        //60 of these cycles occur every second
        if (clk_div==1666667) begin
            clk_div<=0;
            game_clk<=!game_clk;
        end else begin
            clk_div<=clk_div+1;
        end
    end
end


//------------------GAME LOGIC------------------
//Controller Inputs
wire [3:0] direction;
wire restart;
controller controller_inst(
    .clk(game_clk),
    .rst(rst),
    .btn(btn),
    .direction(direction),
    .restart(restart)
    );

////------------------Snake Instance------------------
//Snake Movement, Size and Screen Position
wire snakeHead;
wire snakeBody;
wire [10:0] curr_x;
wire [10:0] curr_y;
wire border;
wire appleEaten;
wire game_over;
wire apple;
wire [6:0] score;
snake snake_inst(
    .pixclk(pixclk),
    .game_clk(game_clk),
    .rst(rst),
    .restart(restart),
    .direction(direction),
    .curr_x(curr_x),
    .curr_y(curr_y),
    .border(border),
    .apple(apple),
    .snakeHead(snakeHead),
    .snakeBody(snakeBody),
    .appleEaten(appleEaten),
    .snake_died(snake_died),
    .score(score)
);


//------------------Apple Eat/Re-Generate Logic------------------
//Module:
//Inputs = Snake Head Position
//Start game by generating a starting position for the apple
//Detect if the snake's head and the apple positions overlap
//Add to the number of apples eaten if any overlap
//Generate a new "random" position for the apple if eaten
//Outputs = Apple Position, Apples Eaten


//apple_logic apple_logic_inst();
wire apple_valid;
wire [10:0]appleX, appleY;
apple apple_inst(
    .pixclk(pixclk),
    .rst(rst),
    .restart(restart),
    .curr_x(curr_x),
    .curr_y(curr_y),
    .appleX(appleX), .appleY(appleY),
    .snakeHead(snakeHead), 
    .snakeBody(snakeBody),
    .appleEaten(appleEaten),
    .snake_died(snake_died),
    .apple(apple),
    .apple_valid(apple_valid)
);



//------------------Display Score on Sevenseg Display------------------

reg [3:0] dig0, dig1, dig2, dig3, dig4, dig5, dig6, dig7=0;
wire [3:0] hundreds, tens, ones;

bin_to_bcd bcd_inst(.bin(score),
    .hundreds(hundreds),
    .tens(tens),
    .ones(ones));

seginterface seg_inst_0(.an(an), .dig0(ones), .dig1(tens),.dig2(hundreds),.dig3(dig3),
    .dig4(dig4), .dig5(dig5),.dig6(dig6),.dig7(dig7),
    .clk(clk), .rst(rst), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));


//------------------Flash LEDS upon APPLE EATEN & DEATH------------------

LED_flash appleEatenFlash(
    .pixclk(pixclk),
    .rst(rst),
    .appleEaten(appleEaten),
    .LED(LED)
);

LED_flash_death snakeDeathFlash(
    .pixclk(pixclk),
    .rst(rst),
    .snake_died(snake_died),
    .led_red(led_red)
);


//------------------Object Drawing and VGA Output------------------
wire [3:0] draw_r;
wire [3:0] draw_g;
wire [3:0] draw_b;

drawcontrol drawcontrol_inst(
//inputs
    .pixclk(pixclk),
    .rst(rst),
    .snakeBody(snakeBody),
    .snakeHead(snakeHead),
    .snake_died(snake_died),
    .apple(apple),
    .apple_valid(apple_valid),
    .curr_x(curr_x),
    .curr_y(curr_y),
    .appleX(appleX),
    .appleY(appleY),
//outputs
    .draw_r(draw_r),
    .draw_g(draw_g),
    .draw_b(draw_b),
    .border(border)
);

vga vga_out (
//inputs
        .clk(pixclk),
        .rst(rst),
        .draw_r(draw_r),
        .draw_g(draw_g),
        .draw_b(draw_b),
//outputs
        .curr_x(curr_x),
        .curr_y(curr_y),
        .pix_r(pix_r),
        .pix_g(pix_g),
        .pix_b(pix_b),
        .hsync(hsync),
        .vsync(vsync) 
    );

endmodule