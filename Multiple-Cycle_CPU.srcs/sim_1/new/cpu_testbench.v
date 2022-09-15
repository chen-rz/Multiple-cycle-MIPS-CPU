`timescale 1ns/1ps

module cpu_testbench();

    reg clock, reset_n;
    wire [31:0] pc;
    wire [31:0] instruc;
    wire [2:0] state;
    wire [31:0] reg0;  wire [31:0] reg1;  wire [31:0] reg2;  wire [31:0] reg3;  wire [31:0] reg4;
    wire [31:0] reg5;  wire [31:0] reg6;  wire [31:0] reg7;  wire [31:0] reg8;  wire [31:0] reg9;
    wire [31:0] reg10; wire [31:0] reg11; wire [31:0] reg12; wire [31:0] reg13; wire [31:0] reg14;
    wire [31:0] reg15; wire [31:0] reg16; wire [31:0] reg17; wire [31:0] reg18; wire [31:0] reg19;
    wire [31:0] reg20; wire [31:0] reg21; wire [31:0] reg22; wire [31:0] reg23; wire [31:0] reg24;
    wire [31:0] reg25; wire [31:0] reg26; wire [31:0] reg27; wire [31:0] reg28; wire [31:0] reg29;
    wire [31:0] reg30; wire [31:0] reg31;
    
    initial begin
        clock <= 1'b1;
        reset_n <= 1'b0;
        #(5) reset_n <= 1'b1;
    end
    
    always #(5)
        clock <= ~clock;
    
    cpu CPU (clock, reset_n, pc, instruc, state,
        reg0,  reg1,  reg2,  reg3,  reg4,
        reg5,  reg6,  reg7,  reg8,  reg9,
        reg10, reg11, reg12, reg13, reg14,
        reg15, reg16, reg17, reg18, reg19,
        reg20, reg21, reg22, reg23, reg24,
        reg25, reg26, reg27, reg28, reg29,
        reg30, reg31);
    
endmodule