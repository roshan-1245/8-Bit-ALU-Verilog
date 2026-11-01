`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2026 11:48:37
// Design Name: 
// Module Name: ALU_tb
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


`timescale 1ns/1ps

module ALU_tb;

    reg  [7:0] A;
    reg  [7:0] B;
    reg  [2:0] ALU_Sel;

    wire [7:0] ALU_Out;
    wire       Carry;
    wire       Zero;

    // Instantiate ALU
    ALU uut (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .ALU_Out(ALU_Out),
        .Carry(Carry),
        .Zero(Zero)
    );

    initial begin

        // Display results
        $monitor("Time=%0t | A=%d | B=%d | Sel=%b | Out=%d | Carry=%b | Zero=%b",
                  $time, A, B, ALU_Sel, ALU_Out, Carry, Zero);

        // Addition
        A = 8'd20;
        B = 8'd10;
        ALU_Sel = 3'b000;
        #10;

        // Subtraction
        A = 8'd20;
        B = 8'd10;
        ALU_Sel = 3'b001;
        #10;

        // AND
        A = 8'b10101010;
        B = 8'b11001100;
        ALU_Sel = 3'b010;
        #10;

        // OR
        A = 8'b10101010;
        B = 8'b11001100;
        ALU_Sel = 3'b011;
        #10;

        // XOR
        A = 8'b10101010;
        B = 8'b11001100;
        ALU_Sel = 3'b100;
        #10;

        // NOT
        A = 8'b10101010;
        B = 8'b00000000;
        ALU_Sel = 3'b101;
        #10;

        // Increment
        A = 8'd25;
        B = 8'd0;
        ALU_Sel = 3'b110;
        #10;

        // Decrement
        A = 8'd25;
        B = 8'd0;
        ALU_Sel = 3'b111;
        #10;

        // Zero result test
        A = 8'd10;
        B = 8'd10;
        ALU_Sel = 3'b001;
        #10;

        $finish;
    end

endmodule
