`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 13:13:47
// Design Name: 
// Module Name: apple
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


module apple(
    input pixclk,
    input rst,
    input restart,
    input [10:0] curr_x,
    input [10:0]curr_y,
    input snakeHead, 
    input snakeBody,
    input appleEaten,
    input snake_died,
    output apple,
    output apple_valid,
    output [10:0] appleX, appleY
    );

reg [10:0] curr_appleX;
reg [10:0] curr_appleY;
parameter appleSizeX=20, appleSizeY=20;

//Apple currently on screen? for drawing and collisions
reg curr_apple;
always@(posedge pixclk) begin
    curr_apple <= (curr_x > curr_appleX && curr_x < (curr_appleX + appleSizeX)) && (curr_y>curr_appleY && curr_y < (curr_appleY + appleSizeY));
end
assign apple = curr_apple;

//Start game by generating a starting position for the apple
//Detect if the snake's head and the apple positions overlap
//Add to the number of apples eaten if any overlap
//Generate a new "random" position for the apple if eaten


//------------------GENERATE RANDOM STARTING/NEW POSITION LOGIC------------------
reg [10:0] randX, randY;

//pseudorandom generator - LFSR Register (to talk about in report :))
reg [15:0] lfsr = 16'hACE1;
wire feedback = lfsr[15] ^ lfsr[13] ^ lfsr[12] ^ lfsr[10];


reg apple_val;
always @(posedge pixclk) begin
    if (!rst || restart) begin
//        lfsr <= 16'hACE1;
        curr_appleX <= 11'd300;
        curr_appleY <= 11'd200;
        apple_val <=1;
    end
    else if (appleEaten || (apple && snakeHead) ||(apple && snakeBody)) begin
        //generate new random apple coordinate if eaten, or spawns on snake
        lfsr <= {lfsr [14:0], feedback};
        apple_val <=0;
        
        //map to euclidean
        curr_appleX <= 11'd50 + (lfsr[10:0] % 11'd1341); //random number between 50 to 1390
        curr_appleY <= 11'd160 + (lfsr[15:5] % 11'd681); //random number between 50 to 840
    end
    else if (!apple_val) begin
        apple_val <=1;
    end
end

assign apple_valid = apple_val;
assign appleX = curr_appleX;
assign appleY = curr_appleY;

endmodule
