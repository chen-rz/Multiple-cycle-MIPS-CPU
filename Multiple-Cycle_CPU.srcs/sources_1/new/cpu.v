`timescale 1ns/1ps

module cpu (input clk, input reset_n,
    output [31:0] pc, output [31:0] inst, output [2:0] state,
    output [31:0] reg0,  output [31:0] reg1,  output [31:0] reg2,  output [31:0] reg3,
    output [31:0] reg4,  output [31:0] reg5,  output [31:0] reg6,  output [31:0] reg7,
    output [31:0] reg8,  output [31:0] reg9,  output [31:0] reg10, output [31:0] reg11,
    output [31:0] reg12, output [31:0] reg13, output [31:0] reg14, output [31:0] reg15,
    output [31:0] reg16, output [31:0] reg17, output [31:0] reg18, output [31:0] reg19,
    output [31:0] reg20, output [31:0] reg21, output [31:0] reg22, output [31:0] reg23,
    output [31:0] reg24, output [31:0] reg25, output [31:0] reg26, output [31:0] reg27,
    output [31:0] reg28, output [31:0] reg29, output [31:0] reg30, output [31:0] reg31);
    
    // Instruction fields
    wire [5:0] op = inst[31:26];
    wire [4:0] rs = inst[25:21];
    wire [4:0] rt = inst[20:16];
    wire [4:0] rd = inst[15:11];
    wire [5:0] funct = inst[05:00];
    wire [15:0] imm = inst[15:00];
    wire [25:0] addr = inst[25:00];
    
    // Control signals
    wire [4:0] alu_ctrl;
    wire [1:0] pc_sel;
    wire [1:0] alu_b_sel;
    wire alu_a_sel; // alu a input selection (1 for from pc)
    wire mem_addr_sel;

    // Enable signals
    wire mem_wena;
    wire reg_wena;
    wire pc_wena;
    wire ir_wena;

    // Mux selection signals
    wire is_rt;
    wire is_lw_inst;
    wire is_shift_inst;
    wire is_jal_inst;
    wire need_sgn_xtnd;
    
    // Data path
    wire [31:0] pc_b_target;
    wire [31:0] pc_next;
    wire [31:0] regf_out_a;
    wire [31:0] regf_out_b;
    wire [31:0] alu_in_a;
    wire [31:0] alu_in_b;
    wire [31:0] alu_out;
    wire [31:0] data_to_regf;
    wire [31:0] mux2c;
    wire [31:0] shift_amount = {27'b0,inst[10:6]};
    wire [15:0] sign_16bits = {16{need_sgn_xtnd & inst[15]}};
    wire [31:0] imm32 = {sign_16bits, imm};
    wire [31:0] word_dist = {sign_16bits[13:0], imm, 2'b00};
    wire [31:0] j_target = {pc[31:28], addr, 2'b00};
    wire [4:0] reg_dest;
    wire [4:0] regf_w_addr = reg_dest | {5{is_jal_inst}};
    wire alu_zero;
    wire [31:0] rega;
    wire [31:0] regb;
    wire [31:0] regc;
    wire [31:0] data;
    wire [31:0] mux2e;
    wire [31:0] mem_addr;
    wire [31:0] data_from_mem;
    wire [31:0] data_to_mem;
    
    // Instantiations
    alu ALU (alu_in_a, alu_in_b, alu_ctrl, alu_out, alu_zero);

    control_unit CU (op, funct, clk, reset_n, alu_zero,
        pc_wena, ir_wena, mem_wena, reg_wena,
        mem_addr_sel, is_rt, is_lw_inst, is_shift_inst, is_jal_inst, need_sgn_xtnd,
        alu_ctrl, alu_a_sel, alu_b_sel,
        pc_sel,
        state);

    reg32 PC (pc_next, clk, reset_n, pc_wena, pc);
    
    reg32 IR (data_from_mem, clk, reset_n, ir_wena, inst);

    reg32 DR (data_from_mem, clk, reset_n, 1'b1, data);
    
    reg32 REGA (regf_out_a, clk, reset_n, 1'b1, rega);
    
    reg32 REGB (regf_out_b, clk, reset_n, 1'b1, regb);

    reg32 REGC (alu_out, clk, reset_n, 1'b1, regc);
    
    mux2_32b MUX2A (pc, regc, mem_addr_sel, mem_addr);
    
    mux2_5b MUX2B (rd, rt, is_rt, reg_dest);
    
    mux2_32b MUX2C (regc, data, is_lw_inst, mux2c);
    
    mux2_32b MUX2D (mux2c, pc, is_jal_inst, data_to_regf);
    
    mux2_32b MUX2E (rega, shift_amount, is_shift_inst, mux2e);

    mux2_32b MUX2F (mux2e, pc, alu_a_sel, alu_in_a);

    mux4_32b MUX4A (regb, 32'd4, imm32, word_dist, alu_b_sel, alu_in_b);
    
    mux4_32b MUX4B (alu_out, regc, regf_out_a, j_target, pc_sel, pc_next);

    register_file REG_FILE (rs, rt, regf_w_addr, data_to_regf, reg_wena, clk, reset_n,
        regf_out_a, regf_out_b,
        reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9,
        reg10, reg11, reg12, reg13, reg14, reg15, reg16, reg17, reg18, reg19,
        reg20, reg21, reg22, reg23, reg24, reg25, reg26, reg27, reg28, reg29,
        reg30, reg31);
    
    assign data_to_mem = regb;
    memory MEMORY (mem_addr, data_to_mem, mem_wena, clk, data_from_mem);
    
endmodule