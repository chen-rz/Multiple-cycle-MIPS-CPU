`timescale 1ns/1ps

module control_unit (
    // Input
    input [5:0] op,
    input [5:0] funct,
    input clk,
    input reset_n,
    input alu_zero, // if ALU outputs zero
    // Enable signals
    output reg pc_wena, 
    output reg ir_wena, 
    output reg mem_wena, 
    output reg reg_wena,
    // Multiplexer selection signals
    output reg mem_addr_sel,
    output reg is_rt_inst,
    output reg is_lw_inst, 
    output reg is_shift_inst, 
    output reg is_jal_inst, 
    output reg sgn_xtnd, // sign extension
    // ALU control
    output reg [4:0] alu_ctrl,
    output reg alu_a_sel, // ALU a selection, 1 for pc
    output reg [1:0] alu_b_sel, // ALU b selection, 4 to 1
    // PC input control
    output reg [1:0] pc_sel,
    // State
    output reg [2:0] state);
    
    // Next state
    reg [2:0] next_state;
    // State code
    parameter [2:0] if_state = 3'd0;
    parameter [2:0] id_state = 3'd1;
    parameter [2:0] exe_state = 3'd2;
    parameter [2:0] mem_state = 3'd3;
    parameter [2:0] wb_state = 3'd4;
    
    // Instruction type
    wire i_add, i_sub, i_and, i_or, i_xor, i_sll, i_srl, i_sra;
    wire i_jr, i_jal, i_j, i_beq, i_bne;
    wire i_addi, i_andi, i_ori, i_xori;
    wire i_lw, i_sw, i_lui;
    
    // Instruction decoding
    assign i_add = (op == 6'd0) & (funct == 6'b100000);
    assign i_sub = (op == 6'd0) & (funct == 6'b100010);
    assign i_and = (op == 6'd0) & (funct == 6'b100100);
    assign i_or = (op == 6'd0) & (funct == 6'b100101);
    assign i_xor = (op == 6'd0) & (funct == 6'b100110);
    assign i_sll = (op == 6'd0) & (funct == 6'b000000);
    assign i_srl = (op == 6'd0) & (funct == 6'b000010);
    assign i_sra = (op == 6'd0) & (funct == 6'b000011);
    assign i_jr = (op == 6'd0) & (funct == 6'b001000);
    
    assign i_addi = (op == 6'b001000);
    assign i_andi = (op == 6'b001100);
    assign i_ori = (op == 6'b001101);
    assign i_xori = (op == 6'b001110);
    assign i_lw = (op == 6'b100011);
    assign i_sw = (op == 6'b101011);
    assign i_beq = (op == 6'b000100);
    assign i_bne = (op == 6'b000101);
    assign i_lui = (op == 6'b001111);
    assign i_j = (op == 6'b000010);
    assign i_jal = (op == 6'b000011);


    always @(*) begin

        if (~reset_n)
            state <= if_state;

        // Write-enables: all 0
        pc_wena = 1'b0;
        ir_wena = 1'b0;
        mem_wena = 1'b0;
        reg_wena = 1'b0;

        mem_addr_sel = 1'b0;
        alu_ctrl = 5'd1;
        alu_a_sel = 1'b0; // alu input a: reg a
        alu_b_sel = 2'd0; // alu input b: reg b

        is_rt_inst = 1'b0; // reg dest no: rd
        is_lw_inst = 1'b0; // select reg c
        is_shift_inst = 1'b0; // select reg a
        pc_sel = 2'd0; // select alu output
        is_jal_inst = 1'b0; // not a jal
        sgn_xtnd = 1'b1; // sign extend

        case (state)

            if_state: begin

                ir_wena = 1'b1;

                // PC += 4
                pc_wena = 1'b1;
                alu_a_sel = 1'b1; // PC
                alu_b_sel = 2'd1; // 32'd4

                next_state = id_state;

            end
            
            id_state: begin

                if (i_j) begin
                    pc_sel = 2'd3;
                    pc_wena = 1'b1;
                    next_state = if_state;
                end

                else if (i_jal) begin
                    pc_sel = 2'd3;
                    pc_wena = 1'b1;
                    is_jal_inst = 1'b1;
                    reg_wena = 1'b1; // save PC+4
                    next_state = if_state;
                end
                
                else if (i_jr) begin
                    pc_sel = 2'd2;
                    pc_wena = 1'b1;
                    next_state = if_state;
                end
                
                else begin
                    alu_ctrl = 5'd1;
                    alu_a_sel = 1'b1;
                    alu_b_sel = 2'd3;
                    next_state = exe_state;
                end

            end
            
            exe_state: begin

                if (i_add)
                    alu_ctrl = 5'd1;
                else if (i_sub)
                    alu_ctrl = 5'd2;
                else if (i_and)
                    alu_ctrl = 5'd3;
                else if (i_or)
                    alu_ctrl = 5'd4;
                else if (i_xor)
                    alu_ctrl = 5'd5;
                else if (i_sll)
                    alu_ctrl = 5'd6;
                else if (i_srl)
                    alu_ctrl = 5'd7;
                else if (i_sra)
                    alu_ctrl = 5'd8;
                else if (i_lw)
                    alu_ctrl = 5'd9;
                else if (i_sw)
                    alu_ctrl = 5'd10;
                else if (i_beq)
                    alu_ctrl = 5'd11;
                else if (i_bne)
                    alu_ctrl = 5'd12;
                else if (i_addi)
                    alu_ctrl = 5'd13;
                else if (i_andi)
                    alu_ctrl = 5'd14;
                else if (i_ori)
                    alu_ctrl = 5'd15;
                else if (i_xori)
                    alu_ctrl = 5'd16;
                else if (i_lui)
                    alu_ctrl = 5'd17;

                if (i_beq || i_bne) begin
                    pc_sel = 2'd1;
                    pc_wena = i_beq & alu_zero | i_bne & ~alu_zero;
                    next_state = if_state;
                end
                
                else begin
                    if (i_lw || i_sw) begin
                        alu_b_sel = 2'd2;
                        next_state = mem_state;
                    end
                    else begin

                        if (i_sll || i_srl || i_sra)
                            is_shift_inst = 1'b1;

                        if (i_addi || i_andi || i_ori || i_xori || i_lui)
                            alu_b_sel = 2'd2;

                        if (i_andi || i_ori || i_xori)
                            sgn_xtnd = 1'b0;

                        next_state = wb_state;

                    end
                end

            end
            
            mem_state: begin
                
                mem_addr_sel = 1'b1;

                if (i_lw) begin // load
                    next_state = wb_state;
                end

                else begin // store
                    mem_wena = 1'b1;
                    next_state = if_state;
                end

            end
            
            wb_state: begin
                
                if (i_lw)
                    is_lw_inst = 1'b1;

                if (i_lw || i_addi || i_andi || i_ori || i_xori || i_lui)
                    is_rt_inst = 1'b1;

                reg_wena = 1'b1;
                next_state = if_state;
                
            end
            
            default:
                next_state = if_state;

        endcase

    end

    always @(posedge clk) begin

        state <= next_state;
        
    end

endmodule