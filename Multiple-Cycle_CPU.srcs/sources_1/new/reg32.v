`timescale 1ns/1ps

module reg32 (input [31:0] in, input clk, input reset_n, input ena, output reg [31:0] out);

    always @(posedge clk) begin
        if (~reset_n)
            out <= 0;
        else if (ena)
            out <= in;
    end

endmodule