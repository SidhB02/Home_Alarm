`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2024 14:24:57
// Design Name: 
// Module Name: Top_Module
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

module Top_Module(input logic [4:0] sw,           // Switch inputs
                                  output logic Alarm,            // Alarm signal
                                  output logic [3:0] an,         // 7-segment anode control
                                  output logic [6:0] seg,       // 7-segment display segments
                                  output logic led1,led2,led3);  //Indicator LEDs
logic [3:0] act;                  // Internal signal for 7-segment input
assign act = {sw[4], 1'b0, sw[4], 1'b0}; // Generate a pattern based on `sw`

// Instantiate submodules
Seven_Segment S1(.in(act),.seg(seg),.an(an));
Home_Alarm_System S2(.sw(sw[3:0]),.m(sw[4]),.a(Alarm),.led1(led1),.led2(led2),.led3(led3));

endmodule