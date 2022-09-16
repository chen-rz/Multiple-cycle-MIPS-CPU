`timescale 1ns/1ps

module register_file (input [4:0] r_addr_a, input [4:0] r_addr_b, input [4:0] w_addr,
    input [31:0] data_in, input wena, input clk, input reset_n,
    output reg [31:0] out_a, output reg [31:0] out_b,
    output reg [31:0] reg0,  output reg [31:0] reg1,  output reg [31:0] reg2,  output reg [31:0] reg3,
    output reg [31:0] reg4,  output reg [31:0] reg5,  output reg [31:0] reg6,  output reg [31:0] reg7,
    output reg [31:0] reg8,  output reg [31:0] reg9,  output reg [31:0] reg10, output reg [31:0] reg11,
    output reg [31:0] reg12, output reg [31:0] reg13, output reg [31:0] reg14, output reg [31:0] reg15,
    output reg [31:0] reg16, output reg [31:0] reg17, output reg [31:0] reg18, output reg [31:0] reg19,
    output reg [31:0] reg20, output reg [31:0] reg21, output reg [31:0] reg22, output reg [31:0] reg23,
    output reg [31:0] reg24, output reg [31:0] reg25, output reg [31:0] reg26, output reg [31:0] reg27,
    output reg [31:0] reg28, output reg [31:0] reg29, output reg [31:0] reg30, output reg [31:0] reg31);

    reg [31:0] register [31:0];
    
    always @(*) begin

        // Read
        out_a <= register[r_addr_a];
        out_b <= register[r_addr_b];

        reg0  <= register[0];  reg1  <= register[1];  reg2  <= register[2];  reg3  <= register[3];
        reg4  <= register[4];  reg5  <= register[5];  reg6  <= register[6];  reg7  <= register[7];
        reg8  <= register[8];  reg9  <= register[9];  reg10 <= register[10]; reg11 <= register[11];
        reg12 <= register[12]; reg13 <= register[13]; reg14 <= register[14]; reg15 <= register[15];
        reg16 <= register[16]; reg17 <= register[17]; reg18 <= register[18]; reg19 <= register[19];
        reg20 <= register[20]; reg21 <= register[21]; reg22 <= register[22]; reg23 <= register[23];
        reg24 <= register[24]; reg25 <= register[25]; reg26 <= register[26]; reg27 <= register[27];
        reg28 <= register[28]; reg29 <= register[29]; reg30 <= register[30]; reg31 <= register[31];

    end

    // Write
    integer i;
    always @(posedge clk) begin

        register[0] <= 32'd0; // register #0

        if (~reset_n)
            for (i = 0; i < 32; i = i+1)
                register[i] <= 32'd0;
                
        if (wena)
            register[w_addr] <= data_in;

    end

endmodule