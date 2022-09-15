`timescale 1ns/1ps

module mux2_32b (input [31:0] in0, input [31:0] in1, input sel, output [31:0] out);

    assign out = sel ? in1 : in0;

endmodule

module mux2_5b (input [4:0] in0, input [4:0] in1, input sel, output [4:0] out);

    assign out = sel ? in1 : in0;

endmodule

module mux4_32b (input [31:0] in0, input [31:0] in1, input [31:0] in2, input [31:0] in3, 
    input [1:0] sel, output reg [31:0] out);

    always @(*) begin
        case (sel)
            2'd0:
                out = in0;
            2'd1:
                out = in1;
            2'd2:
                out = in2;
            2'd3:
                out = in3;
        endcase
    end

endmodule