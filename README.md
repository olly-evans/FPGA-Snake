# Overview
A classic Snake game implemented in Verilog HDL, designed and synthesized using Xilinx Vivado Design Suite. 
The project runs on an FPGA development board, using VGA output for display and on-board buttons for user input.

# Video
The video in the link below shows the functionality of the game, features, and block diagram of the games architecture.

https://youtu.be/x7fGMcoGL00

# Core Gameplay Features
- Snake movement, controlled by FPGA buttons directions.
- Snake growth, snake grows when an apple is eaten.
- Apple generation, apple appears at random positions within screen boundaries using LFSR for randomness
- Collision detection, the snake dies if the head hits its own body or a boundary
- Restart mechanism, snake resets position and size on game restart or death
- Graphics, pixel rendering to draw the borders and the sprites

# Extra Features
- Mystery boxes -> there is a 12.5% chance that a mystery box shows up instead of an apple with four possible outcomes:
    - Grow more (+3 length instead of +1)
    - Speed up for 6 seconds
    - Poison -> shrink or die
    - Inverted direction input for seconds
- LED Feedback -> Flashes green upon apple consumption and red upon death
- High/Current score display -> shown on the seven segment display with high score on the left and current on the right
- 
