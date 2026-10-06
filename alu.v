`timescale 1ns / 1ps


module alu16 (
    input  [31:0] A,
    input  [31:0] B,
    input  [2:0] SEL,

    output reg [31:0] RESULT
);

always @(*) begin
    case (SEL)

        3'b000: RESULT = A & B;

        3'b010: RESULT = A | B;

        3'b001: RESULT = A ^ B;

        3'b011: RESULT = A + B;

		   4'b0101: RESULT = A << B[4:0];        // SLL
        4'b0110: RESULT = A >> B[4:0];        // SRL
        4'b0111: RESULT = $signed(A) >>> B[4:0]; // SRA

        4'b1000: RESULT = ($signed(A) < $signed(B)) ? 32'd1 : 32'd0; // SLT
        4'b1001: RESULT = (A < B) ? 32'd1 : 32'd0;                    // SLTU

        default: RESULT = 32'd0;

    endcase
end

endmodule