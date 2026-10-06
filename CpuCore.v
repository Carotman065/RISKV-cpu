module cpu(input clk, input rst);
//top file

endmodule

module pc(
    input clk, rst,
    input [31:0] next_pc,
    output reg [31:0] pc
);
//counts current address position of instruction


endmodule

module memory(
    input clk,
    input [31:0] addr,
    input [31:0] wdata,
    input we,
    output [31:0] rdata
);
//takes address to read per clock signal and the write data and out puts read data  

endmodule

module regfile(
    input clk,
    input we,
    input [4:0] rs1, rs2, rd,
    input [31:0] wdata,
    output [31:0] rdata1, rdata2
);
//register file that stores the 32 register slots of the cpu

endmodule

module decoder(
    input [31:0] instr,
    output [4:0] rs1, rs2, rd,
    output [31:0] imm,
    output [3:0] alu_op,
    output alu_src
);
//sends signal to alu based on instruction give



endmodule

module alu(
    input [31:0] a, b,
    input [3:0] op,
    output reg [31:0] result,
    output zero
);
//takes the op code and 2 values and outputs a new registar value


endmodule