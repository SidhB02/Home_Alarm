`timescale 1ns / 1ps
    //////////////////////////////////////////////////////////////////////////////////
    // Company: 
    // Engineer: 
    // 
    // Create Date: 16.11.2024 14:24:57
    // Design Name: 
    // Module Name: Seven_Segment
    // Project Name: 
    // Target Devices: 
    // Tool Versions: 
    // Description: Converts 4-bit input into 7-segment display patterns
    // 
    // Dependencies: 
    // 
    // Revision:
    // Revision 0.01 - File Created
    // Additional Comments:
    // 
    //////////////////////////////////////////////////////////////////////////////////
    
module Seven_Segment(input logic [3:0] in,        // 4-bit input
                                        output logic [6:0] seg,      // 7-segment display output
                                        output logic [3:0] an);        // Anode control
always @(in) 
begin
        case (in)
            4'b0000: seg = 7'b0000001;  // 0
            4'b0001: seg = 7'b1001111;  // 1
            4'b0010: seg = 7'b0010010;  // 2
            4'b0011: seg = 7'b0000110;  // 3
            4'b0100: seg = 7'b1001100;  // 4
            4'b0101: seg = 7'b0100100;  // 5
            4'b0110: seg = 7'b0100000;  // 6
            4'b0111: seg = 7'b0001111;  // 7
            4'b1000: seg = 7'b0000000;  // 8
            4'b1001: seg = 7'b0000100;  // 9
            4'b1010: seg = 7'b0001000;  // A
            4'b1011: seg = 7'b1100000;  // b
            4'b1100: seg = 7'b0110001;  // C
            4'b1101: seg = 7'b1000010;  // d
            4'b1110: seg = 7'b0110000;  // E
            4'b1111: seg = 7'b0111000;  // F
        endcase
end
assign an = 4'b1110; // Fixed default anode activation
endmodule
