`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2025 12:45:26
// Design Name: 
// Module Name: controller
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


module controller(
    input clk,
    input rst,
    input [4:0] btn,
    output [3:0] direction,
    output restart
    );


//Snake direction controlled by 4 buttons: direction constant unless different button pressed.
reg [3:0]curr_direction=4'b0010;
reg curr_restart;

always@(posedge clk) begin
    case(btn[4:1])
        4'b0010:curr_direction <= 4'b0001;//left
        4'b0100: curr_direction<=4'b0010;//right
        4'b1000: curr_direction<=4'b0100;//up
        4'b0001: curr_direction <= 4'b1000; //down
        default: begin
        end 
    endcase
    if (btn[0]) begin
        curr_restart<=1;
    end
    else begin
        curr_restart<=0;
    end 
end    

assign direction = curr_direction;
assign restart = curr_restart;

endmodule
