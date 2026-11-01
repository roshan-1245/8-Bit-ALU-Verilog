`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2026 11:42:45
// Design Name: 
// Module Name: ALU
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

module ALU (
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] ALU_Sel,
    output reg [7:0] ALU_Out,
    output reg       Carry,
    output           Zero
);

    always @(*) begin

        // Default values
        ALU_Out = 8'b0;
        Carry   = 1'b0;

        case (ALU_Sel)

            3'b000: begin
                // Addition
                {Carry, ALU_Out} = A + B;
            end

            3'b001: begin
                // Subtraction
                {Carry, ALU_Out} = A - B;
            end

            3'b010: begin
                // AND
                ALU_Out = A & B;
            end

            3'b011: begin
                // OR
                ALU_Out = A | B;
            end

            3'b100: begin
                // XOR
                ALU_Out = A ^ B;
            end

            3'b101: begin
                // NOT A
                ALU_Out = ~A;
            end

            3'b110: begin
                // Increment A
                {Carry, ALU_Out} = A + 1'b1;
            end

            3'b111: begin
                // Decrement A
                ALU_Out = A - 1'b1;
            end

            default: begin
                ALU_Out = 8'b0;
                Carry   = 1'b0;
            end

        endcase
    end

    // Zero flag
    assign Zero = (ALU_Out == 8'b0);

endmodule
