`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2024 14:45:37
// Design Name: 
// Module Name: Top_Module_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench for Top_Module
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Top_Module_tb();
logic [4:0] sw;          // Switch inputs
logic Alarm;            // Alarm signal
logic [3:0] an;         // 7-segment anode control
logic [6:0] seg;       //7-segment display control
logic led1,led2,led3;//Indicator LEDs
    
// Instantiate the top_module
Top_Module dut (.sw(sw),.an(an),.seg(seg),.Alarm(Alarm),.led1(led1),.led2(led2),.led3(led3));

initial begin
sw = 5'b00000; #10; //Master Switch and Sensors are inactive
sw = 5'b00001; #10; // Switch 0 pressed but master switch is inactive
sw = 5'b10000; #10; // Master switch on, no sensor active (No alarm)
sw = 5'b10001; #10; // Master switch on, switch 0 pressed (Alarm is active)
sw = 5'b11010; #10; // Master switch on, switches 1 and 3 pressed (Alarm is active)
$stop;
end
endmodule
