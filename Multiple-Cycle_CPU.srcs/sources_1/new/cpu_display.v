`timescale 1ns/1ps
module cpu_display(
        input clk, input resetn,
        
        input btn_clk,
        
        // Do not modify
        output lcd_rst, output lcd_cs, output lcd_rs, output lcd_wr, output lcd_rd,
        inout[15:0] lcd_data_io,
        output lcd_bl_ctr,
        inout ct_int, inout ct_sda,
        output ct_scl, output ct_rstn
    );
    
    //-----{Clock and Reset}begin, Do not modify
    wire cpu_clk;
    reg btn_clk_r1;
    reg btn_clk_r2;
    always @(posedge clk) begin
        if (!resetn) begin
            btn_clk_r1<= 1'b0;
        end
        else begin
            btn_clk_r1 <= ~btn_clk;
        end
        
        btn_clk_r2 <= btn_clk_r1;
    end
    
    wire clk_en;
    assign clk_en = !resetn || (!btn_clk_r1 && btn_clk_r2);
    BUFGCE cpu_clk_cg(.I(clk),.CE(clk_en),.O(cpu_clk));
    //-----{Clock and Reset}end
    
    //-----{Module Instantiation}begin
    wire [31:0] cpu_pc;
    wire [31:0] cpu_inst;
    wire [ 2:0] cpu_state;

    wire [31:0] cpu_r0;  wire [31:0] cpu_r1;  wire [31:0] cpu_r2;  wire [31:0] cpu_r3;
    wire [31:0] cpu_r4;  wire [31:0] cpu_r5;  wire [31:0] cpu_r6;  wire [31:0] cpu_r7;
    wire [31:0] cpu_r8;  wire [31:0] cpu_r9;  wire [31:0] cpu_r10; wire [31:0] cpu_r11;
    wire [31:0] cpu_r12; wire [31:0] cpu_r13; wire [31:0] cpu_r14; wire [31:0] cpu_r15;
    wire [31:0] cpu_r16; wire [31:0] cpu_r17; wire [31:0] cpu_r18; wire [31:0] cpu_r19;
    wire [31:0] cpu_r20; wire [31:0] cpu_r21; wire [31:0] cpu_r22; wire [31:0] cpu_r23;
    wire [31:0] cpu_r24; wire [31:0] cpu_r25; wire [31:0] cpu_r26; wire [31:0] cpu_r27;
    wire [31:0] cpu_r28; wire [31:0] cpu_r29; wire [31:0] cpu_r30; wire [31:0] cpu_r31;

    cpu CPU_for_display(
        cpu_clk, resetn, cpu_pc, cpu_inst, cpu_state,
        cpu_r0,  cpu_r1,  cpu_r2,  cpu_r3,
        cpu_r4,  cpu_r5,  cpu_r6,  cpu_r7,
        cpu_r8,  cpu_r9,  cpu_r10, cpu_r11,
        cpu_r12, cpu_r13, cpu_r14, cpu_r15,
        cpu_r16, cpu_r17, cpu_r18, cpu_r19,
        cpu_r20, cpu_r21, cpu_r22, cpu_r23,
        cpu_r24, cpu_r25, cpu_r26, cpu_r27,
        cpu_r28, cpu_r29, cpu_r30, cpu_r31
    );
    //-----{Module Instantiation}end
    
    //---------------------{Touch Screen}begin--------------------//
    //-----{Instantiation}begin, Do not modify this sub-section
    reg display_valid;
    reg [39:0] display_name;
    reg [31:0] display_value;
    wire [5 :0] display_number;
    wire input_valid;
    wire [31:0] input_value;
    
    lcd_module lcd_module(
        .clk (clk ), //10Mhz
        .resetn (resetn ),
        
        .display_valid (display_valid ),
        .display_name (display_name ),
        .display_value (display_value ),
        .display_number (display_number),
        .input_valid (input_valid ),
        .input_value (input_value ),
        
        .lcd_rst (lcd_rst ),
        .lcd_cs (lcd_cs ),
        .lcd_rs (lcd_rs ),
        .lcd_wr (lcd_wr ),
        .lcd_rd (lcd_rd ),
        .lcd_data_io (lcd_data_io ),
        .lcd_bl_ctr (lcd_bl_ctr ),
        .ct_int (ct_int ),
        .ct_sda (ct_sda ),
        .ct_scl (ct_scl ),
        .ct_rstn (ct_rstn )
    );
    //-----{Instantiation}end
    
    //-----{Screen Output}begin
    //44 blocks are encoded 1-44
    always @(posedge clk) begin
        case(display_number)
            6'd1: begin
                display_valid <= 1'b1;
                display_name <= " PC ";
                display_value <= cpu_pc;
            end
            6'd2: begin
                display_valid <= 1'b1;
                display_name <= "INSTR";
                display_value <= cpu_inst;
            end
            6'd3: begin
                display_valid <= 1'b1;
                display_name <= "STATE";
                display_value <= cpu_state;
            end

            6'd5: begin
                display_valid <= 1'b1;
                display_name <= "REG0 ";
                display_value <= cpu_r0;
            end
            6'd6: begin
                display_valid <= 1'b1;
                display_name <= "REG1 ";
                display_value <= cpu_r1;
            end
            6'd7: begin
                display_valid <= 1'b1;
                display_name <= "REG2 ";
                display_value <= cpu_r2;
            end
            6'd8: begin
                display_valid <= 1'b1;
                display_name <= "REG3 ";
                display_value <= cpu_r3;
            end
            6'd9: begin
                display_valid <= 1'b1;
                display_name <= "REG4 ";
                display_value <= cpu_r4;
            end
            6'd10: begin
                display_valid <= 1'b1;
                display_name <= "REG5 ";
                display_value <= cpu_r5;
            end
            6'd11: begin
                display_valid <= 1'b1;
                display_name <= "REG6 ";
                display_value <= cpu_r6;
            end
            6'd12: begin
                display_valid <= 1'b1;
                display_name <= "REG7 ";
                display_value <= cpu_r7;
            end
            6'd13: begin
                display_valid <= 1'b1;
                display_name <= "REG8 ";
                display_value <= cpu_r8;
            end
            6'd14: begin
                display_valid <= 1'b1;
                display_name <= "REG9 ";
                display_value <= cpu_r9;
            end
            6'd15: begin
                display_valid <= 1'b1;
                display_name <= "REG10";
                display_value <= cpu_r10;
            end
            6'd16: begin
                display_valid <= 1'b1;
                display_name <= "REG11";
                display_value <= cpu_r11;
            end
            6'd17: begin
                display_valid <= 1'b1;
                display_name <= "REG12";
                display_value <= cpu_r12;
            end
            6'd18: begin
                display_valid <= 1'b1;
                display_name <= "REG13";
                display_value <= cpu_r13;
            end
            6'd19: begin
                display_valid <= 1'b1;
                display_name <= "REG14";
                display_value <= cpu_r14;
            end
            6'd20: begin
                display_valid <= 1'b1;
                display_name <= "REG15";
                display_value <= cpu_r15;
            end
            6'd21: begin
                display_valid <= 1'b1;
                display_name <= "REG16";
                display_value <= cpu_r16;
            end
            6'd22: begin
                display_valid <= 1'b1;
                display_name <= "REG17";
                display_value <= cpu_r17;
            end
            6'd23: begin
                display_valid <= 1'b1;
                display_name <= "REG18";
                display_value <= cpu_r18;
            end
            6'd24: begin
                display_valid <= 1'b1;
                display_name <= "REG19";
                display_value <= cpu_r19;
            end
            6'd25: begin
                display_valid <= 1'b1;
                display_name <= "REG20";
                display_value <= cpu_r20;
            end
            6'd26: begin
                display_valid <= 1'b1;
                display_name <= "REG21";
                display_value <= cpu_r21;
            end
            6'd27: begin
                display_valid <= 1'b1;
                display_name <= "REG22";
                display_value <= cpu_r22;
            end
            6'd28: begin
                display_valid <= 1'b1;
                display_name <= "REG23";
                display_value <= cpu_r23;
            end
            6'd29: begin
                display_valid <= 1'b1;
                display_name <= "REG24";
                display_value <= cpu_r24;
            end
            6'd30: begin
                display_valid <= 1'b1;
                display_name <= "REG25";
                display_value <= cpu_r25;
            end
            6'd31: begin
                display_valid <= 1'b1;
                display_name <= "REG26";
                display_value <= cpu_r26;
            end
            6'd32: begin
                display_valid <= 1'b1;
                display_name <= "REG27";
                display_value <= cpu_r27;
            end
            6'd33: begin
                display_valid <= 1'b1;
                display_name <= "REG28";
                display_value <= cpu_r28;
            end
            6'd34: begin
                display_valid <= 1'b1;
                display_name <= "REG29";
                display_value <= cpu_r29;
            end
            6'd35: begin
                display_valid <= 1'b1;
                display_name <= "REG30";
                display_value <= cpu_r30;
            end
            6'd36: begin
                display_valid <= 1'b1;
                display_name <= "REG31";
                display_value <= cpu_r31;
            end

            default : begin
                display_valid <= 1'b0;
            end
        endcase
    end
    //-----{Screen Output}end
    //----------------------{Touch Screen}end---------------------//
endmodule