`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2025 17:45:56
// Design Name: 
// Module Name: LED_flash
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


module LED_flash(
    input pixclk,
    input rst,
    input appleEaten,
    output [13:0] LED
    );
    
reg [26:0] counter=0; //enough bits to count to 106 milion
reg led_on=0;
reg appleEaten_prev=0;

wire apple_eaten_rising = appleEaten && ~appleEaten_prev;

always@(posedge pixclk) begin
    if (!rst) begin
        counter <=0;
        led_on <=0;
        appleEaten_prev<=0;
    end
    
    else begin
        appleEaten_prev <= appleEaten;
        
        if (apple_eaten_rising) begin
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

assign LED = led_on ? 14'b11111111111111: 14'b00000000000000;   
    
endmodule



