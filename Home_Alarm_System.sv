`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2024 14:24:57
// Design Name: 
// Module Name: Home_Alarm_System
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Activates alarm if any of the switches are on
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Home_Alarm_System(input logic [3:0] sw,    // 4-bit switch inputs
                                                    input logic m,           // Master control switch
                                                 output logic a,            // Alarm signal
                                                 output logic led1,led2,led3);  //Indicator LEDs
assign a = (sw[0] | sw[1] | sw[2] | sw[3]) & m; // Alarm logic
assign led1=a;
assign led2=m;
assign led3=~m;
endmodule
