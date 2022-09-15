`timescale 1ns/1ps

module alu (input [31:0] in_a, input [31:0] in_b, input [4:0] ctrl,
    output reg [31:0] out, output reg is_zero);

    parameter i_add  = 5'd1;  wire [31:0] d_add  = in_a + in_b;
    parameter i_sub  = 5'd2;  wire [31:0] d_sub  = in_a - in_b;
    parameter i_and  = 5'd3;  wire [31:0] d_and  = in_a & in_b;
    parameter i_or   = 5'd4;  wire [31:0] d_or   = in_a | in_b;
    parameter i_xor  = 5'd5;  wire [31:0] d_xor  = in_a ^ in_b;
    parameter i_sll  = 5'd6;  wire [31:0] d_sll  = in_b << in_a;
    parameter i_srl  = 5'd7;  wire [31:0] d_srl  = in_b >> in_a;
    parameter i_sra  = 5'd8;  wire [31:0] d_sra  = $signed(in_b) >>> in_a;
    parameter i_lw   = 5'd9;  wire [31:0] d_lw   = in_a + in_b;
    parameter i_sw   = 5'd10; wire [31:0] d_sw   = in_a + in_b;
    parameter i_beq  = 5'd11; wire [31:0] d_beq  = in_a - in_b;
    parameter i_bne  = 5'd12; wire [31:0] d_bne  = in_a - in_b;
    parameter i_addi = 5'd13; wire [31:0] d_addi = in_a + in_b;
    parameter i_andi = 5'd14; wire [31:0] d_andi = in_a & in_b;
    parameter i_ori  = 5'd15; wire [31:0] d_ori  = in_a | in_b;
    parameter i_xori = 5'd16; wire [31:0] d_xori = in_a ^ in_b;
    parameter i_lui  = 5'd17; wire [31:0] d_lui  = {in_b[15:0], 16'd0};
    
    always @(*) begin
        case (ctrl)
            i_add:
                out = d_add;
            i_sub:
                out = d_sub;
            i_and:
                out = d_and;
            i_or:
                out = d_or;
            i_xor:
                out = d_xor;
            i_sll:
                out = d_sll;
            i_srl:
                out = d_srl;
            i_sra:
                out = d_sra;
            i_lw:
                out = d_lw;
            i_sw:
                out = d_sw;
            i_beq:
                out = d_beq;
            i_bne:
                out = d_bne;
            i_addi:
                out = d_addi;
            i_andi:
                out = d_andi;
            i_ori:
                out = d_ori;
            i_xori:
                out = d_xori;
            i_lui:
                out = d_lui;
            default:
                out = 32'd0;
        endcase
        
        is_zero = (out == 32'd0) ? 1'b1 : 1'b0;
    end
    
endmodule