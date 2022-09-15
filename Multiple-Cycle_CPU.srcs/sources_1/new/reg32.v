`timescale 1ns/1ps

// 带有清零和使能的32位寄存器
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