`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2025 17:22:10
// Design Name: 
// Module Name: snake
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


module snake(
    input pixclk,
    input game_clk,
    input rst,
    input restart,
    input [3:0]direction,
    input [10:0] curr_x,
    input [10:0] curr_y,
    input border,
    input apple,
    output snakeHead,
    output snakeBody,
    output appleEaten,
    output snake_died,
    output [6:0] score
    );
    
    
//------------------SNAKE OBJECT------------------
//Start game by setting a starting position for the snake
//Create two memory arrays with 0:snake_length that stores the (x,y) positions of the snake head + body parts
//Continuously update the (x,y) components on the game clock depending on the current direction of travel and changes in direction events
//Reset the snake position array if the game restarts

//------------------SNAKE BODY & MOVEMENT LOGIC------------------
//Memory Arrays for snake head & body positions - grid of (x,y) coordinates for locations of 127 possible snake body parts
reg [10:0] snakeX[0:127];
reg [10:0] snakeY[0:127];
reg [7:0] i0, i1, i2, i3;
reg [6:0] snake_size;

//Internal 
reg curr_snakeBody, curr_snakeHead;
reg found;
reg died;
reg growed;
reg die_pending, grow_pending;

//Movement Variables
reg [3:0] move_counter = 0;
reg move_enable=0;


//Movement counter (to adjust speed)
always @(posedge game_clk) begin
    if ((!rst) || restart || die_pending) begin
        move_counter <= 0;
        move_enable <= 0;
    end 
    else if (move_counter >= 4'd3) begin
        move_counter <= 0;
        move_enable <= 1; 
    end 
    else begin
        move_counter <= move_counter + 1;
        move_enable <= 0;
    end
end


//Snake Loop
always@(posedge game_clk) begin
    //Growth Logic
    if (grow_pending) begin
        snake_size<=snake_size+1;
        growed <=1;
    end
    else begin
        growed <=0;
    end 
    
    //Death Logic
    if((!rst) || restart || die_pending) begin
        //if game restarted or game over, put all snake body blocks back to starting position
        for (i1=1; i1<128;i1=i1+1) begin
            snakeX[i1]<=11'd2000;
            snakeY[i1]<=11'd2000;
        end
        
        snakeX[0]<= 11'd360;
        snakeY[0] <= 11'd600;
        snake_size <= 7'd2; //works
        died <= 1;
    end
    else begin
        died <=0;
        
        //Otherwise continue usual movement, update the ith snake body  such that they follow the positions of the i-1th block
        
        if (move_enable) begin
            //move body
            for (i2=127;i2>0;i2=i2-1) begin
            //only do it up to the size of the snake, otherwise leave the blocks beyond this at the origin
                if (i2<=snake_size-1) begin
                    snakeX[i2]=snakeX[i2-1];
                    snakeY[i2]=snakeY[i2-1];
                end
            end
            
            //move head
            //Snake Head Movement logic - always update the position of the first block (head) of the snake based on direction set by controller
            case(direction)
                4'b0001: snakeX[0] <= (snakeX[0]-20); //left
                4'b0010: snakeX[0] <= (snakeX[0]+20); //right
                4'b0100: snakeY[0] <= (snakeY[0]+20); //up
                4'b1000: snakeY[0] <= (snakeY[0]-20); //down
                default: begin
                end 
            endcase
        end 
    end
end



//------------------Snake Screen Location Logic------------------
//For drawing and collision logics - is the snake head or body at the current location on the screen (curr_x, curr_y)?

//Identify screen location of snake body & head

reg [127:0] match_vector;

genvar i;
generate
    for (i = 1; i < 128; i = i + 1) begin : body_check
        always @(posedge pixclk) begin
            match_vector[i] = (i < snake_size) && (
                (curr_x > snakeX[i] && curr_x < snakeX[i] + 20) &&
                (curr_y > snakeY[i] && curr_y < snakeY[i] + 20)
            );
        end
    end
endgenerate

always @(posedge pixclk) begin
    curr_snakeBody = |match_vector; // OR all results
end

//always@(posedge pixclk) begin
//    found <= 0;
//    //at each clock edge for the VGA display, look for one of the snake body elements at the current screen x and y coordinate
//    for(i3=1; i3<snake_size;i3=i3+1)begin
//        if(!found) begin
//            //true if the current snake body position is within a 20x20 square in the screen
//            curr_snakeBody <= ((curr_x>snakeX[i3] && curr_x<(snakeX[i3]+20))&&(curr_y>snakeY[i3]&&curr_y<(snakeY[i3]+20)));
//            found <= curr_snakeBody;
//        end      
//    end
//end

always@(posedge pixclk) begin
    curr_snakeHead <= ((curr_x>snakeX[0] && curr_x<(snakeX[0]+20))&&(curr_y>snakeY[0]&&curr_y<(snakeY[0]+20)));
end 
    
    
assign snakeBody = curr_snakeBody;
assign snakeHead = curr_snakeHead; 

//------------------Check for Snake Collisions on Screen Map Logic------------------


wire nonLethal, lethal;
assign lethal = border ||curr_snakeBody;
assign nonLethal = apple;

reg curr_appleEaten;

always@(posedge pixclk) begin
//check for apple eaten
    if(nonLethal && curr_snakeHead) begin
        grow_pending<=1;
        curr_appleEaten <=1;
    end 
    else if (growed) grow_pending<=0;
    else begin
        curr_appleEaten <=0;
    end
    
//check for barrier & snake body collisions
    if (lethal && curr_snakeHead)begin //this works
        die_pending <= 1; //now works - triggers death in game_clk domain
    end 
    else if (restart) die_pending<=1;
    else if (died) die_pending <=0; //works
end



assign appleEaten = curr_appleEaten;
assign snake_died = die_pending;
assign score = snake_size-1;

endmodule
