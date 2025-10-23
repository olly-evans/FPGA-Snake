`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2025 13:39:20
// Design Name: 
// Module Name: LED_flash_death
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


module LED_flash_death(
    input pixclk,
    input rst,
    input snake_died,
    output [1:0] led_red
    );
    
reg [26:0] counter=0; //enough bits to count to 106 milion
reg led_on=0;
reg snake_died_prev=0;

wire snake_died_rising = snake_died && ~snake_died_prev;

always@(posedge pixclk) begin
    if (!rst) begin
        counter <=0;
        led_on <=0;
        snake_died_prev<=0;
    end
    
    else begin
        snake_died_prev <= snake_died;
        
        if (snake_died_rising) begin
            //Start 1 second timer
            led_on <=1;
            counter <=0;
        end
        else if(led_on) begin
            if (counter < 27'd50000000) begin
                counter <= counter+1;
            end 
            else begin
                led_on <=0;
            end 
        end 
    end
end  

assign led_red = led_on ? 2'b11: 2'b00;   
    
endmodule
