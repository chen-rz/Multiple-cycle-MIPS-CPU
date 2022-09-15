`timescale 1ns/1ps

// ���������ʹ�ܵ�32λ�Ĵ���
module reg32 (input [31:0] in, input clk, input reset_n, input ena, output reg [31:0] out);

    always @(*) begin
        if (~reset_n)
            out <= 0;
    end

    always @(posedge clk) begin
        if (ena)
            out <= in;
    end

endmodule