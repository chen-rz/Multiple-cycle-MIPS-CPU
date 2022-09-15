`timescale 1ns/1ps

module memory (input [31:0] addr, input [31:0] data_in, input wena, input clk,
    output reg [31:0] data_out);

    // 32-bit address
    // Due to the limit of Vivado simulation, only offer a 64KB memory (16-bit address)
    reg [7:0] mem [65535:0];
    wire [15:0] addr16 = addr[15:0];

    // Data memory
    // Data address begins at 16'd32768 (0x8000)
    // Stack Pointer ($sp) initializes at 16'65532 (0xFFFC)

    // Instructions
    parameter ins_num = 70;
    reg [31:0] insts [ins_num - 1 : 0];

    initial begin
        insts[0]  <= 32'b001101_00000_11101_1111111111111100; //	initialization:	0	ori $sp, $zero, 0xFFFC		ori $29, $0, 0xFFFC
        insts[1]  <= 32'b001101_00000_10001_0000000000000100; //	4		ori $s1, $zero, 0x4
        insts[2]  <= 32'b000000_00000_10001_10010_00001_000010; //	8		srl $s2, $s1, 0x1
        insts[3]  <= 32'b000000_10001_10010_10011_00000_100100; //	C		and $s3, $s1, $s2
        insts[4]  <= 32'b000000_10001_10010_10100_00000_100000; //	10		add $s4, $s1, $s2
        insts[5]  <= 32'b001110_00000_10101_0000000000000001; //	14		xori $s5, $zero, 0x1		xori $21, $0, 0x1
        insts[6]  <= 32'b001101_00000_10000_0000000000000101; //	main:	18	ori $s0, $zero, 0x5	#int n = 5;	ori $16, $0, 0x5
        insts[7]  <= 32'b000000_00000_10000_01101_00010_000000; //		1C	sll $t5, $s0, 0x2	#t5 = 4*n	sll $13, $16, 0x2
        insts[8]  <= 32'b000000_11101_01101_11101_00000_100010; //		20	sub $sp, $sp, $t5	#int arr[n];	sub $29, $29, $13
        insts[9]  <= 32'b001000_11101_11101_0000000000000100; //		24	addi $sp, $sp, 0x4	#locate arr[0]	addi $29, $29, 0x4
        insts[10] <= 32'b101011_11101_10001_0000000000000000; //		28	sw  $s1, 0($sp)	#arr[0] = s1;	sw $17, 0, $29
        insts[11] <= 32'b001000_11101_11101_0000000000000100; //		2C	addi $sp, $sp, 0x4	#locate arr[1]	addi $29, $29, 0x4
        insts[12] <= 32'b101011_11101_10010_0000000000000000; //		30	sw  $s2, 0($sp)	#arr[1] = s2;	sw $18, 0, $29
        insts[13] <= 32'b001000_11101_11101_0000000000000100; //		34	addi $sp, $sp, 0x4	#locate arr[2]	addi $29, $29, 0x4
        insts[14] <= 32'b101011_11101_10011_0000000000000000; //		38	sw  $s3, 0($sp)	#arr[2] = s3;	sw $19, 0, $29
        insts[15] <= 32'b001000_11101_11101_0000000000000100; //		3C	addi $sp, $sp, 0x4	#locate arr[3]	addi $29, $29, 0x4
        insts[16] <= 32'b101011_11101_10100_0000000000000000; //		40	sw  $s4, 0($sp)	#arr[3] = s4;	sw $20, 0, $29
        insts[17] <= 32'b001000_11101_11101_0000000000000100; //		44	addi $sp, $sp, 0x4	#locate arr[4]	addi $29, $29, 0x4
        insts[18] <= 32'b101011_11101_10101_0000000000000000; //		48	sw  $s5, 0($sp)	#arr[4] = s5;	sw $21, 0, $29
        insts[19] <= 32'b000000_10000_00000_00100_00000_100101; //		4C	or  $a0, $s0, $zero	#a0 = n	or $4, $16, $0
        insts[20] <= 32'b000011_00000000000000000000010110; //		50	jal BubbleSort	#BubbleSort(n,arr);	jal BubbleSort
        insts[21] <= 32'b000010_00000000000000000000111110; //		54	j   endprogram	#return 0;	j endprogram
        insts[22] <= 32'b000000_00100_00000_01111_00000_100110; //	BubbleSort:	58	xor $t7, $a0, $zero	#t7 = n; XOR is the same as OR	xor $15, $4, $0
        insts[23] <= 32'b000000_00000_00100_01101_00010_000000; //		5C	sll $t5, $a0, 0x2	#t5 = 4*n	sll $13, $4, 0x2
        insts[24] <= 32'b001101_00000_01000_0000000000000000; //		60	ori $t0, $zero, 0x0	#int i = 0;	ori $8, $0, 0x0
        insts[25] <= 32'b001101_00000_01110_0000000000000001; //		64	ori $t6, $zero, 0x1	#t6 = 1	ori $14, $0, 0x1
        insts[26] <= 32'b000000_01111_01110_01001_00000_100010; //		68	sub $t1, $t7, $t6	#t1 = n-1	sub $9, $15, $14
        insts[27] <= 32'b000000_11101_01101_11101_00000_100010; //		6C	sub $sp, $sp, $t5	#initialize stack, locate arr[-1]	sub $29, $29, $13
        insts[28] <= 32'b001000_11101_11101_0000000000000100; //		70	addi $sp, $sp, 0x4	#locate arr[0]	addi $29, $29, 0x4
        insts[29] <= 32'b000000_01000_01001_01110_00000_100010; //	outerloop:	74	sub $t6, $t0, $t1		sub $14, $8, $9
        insts[30] <= 32'b000100_01110_00000_0000000000010010; //		78	beq $t6, $zero, endouter	#i < n-1;	beq $14, $0, endouter
        insts[31] <= 32'b001101_00000_01010_0000000000000000; //		7C	ori $t2, $zero, 0x0	#int k = 0;	ori $10, $0, 0x0
        insts[32] <= 32'b000000_01001_01000_01011_00000_100010; //		80	sub $t3, $t1, $t0	#t3 = n-1-i	sub $11, $9, $8
        insts[33] <= 32'b000000_01010_01011_01110_00000_100010; //	innerloop:	84	sub $t6, $t2, $t3		sub $14, $10, $11
        insts[34] <= 32'b000100_01110_00000_0000000000001010; //		88	beq $t6, $zero, endinner	#k < n-i-1;	beq $14, $0, endinner
        insts[35] <= 32'b100011_11101_11000_0000000000000000; //		8C	lw  $t8, 0($sp)	#t8 = arr[k]	lw $24, 0, $29
        insts[36] <= 32'b100011_11101_11001_0000000000000100; //		90	lw  $t9, 4($sp)	#t9 = arr[k+1]	lw $25, 4, $29
        insts[37] <= 32'b000000_11000_11001_01110_00000_100010; //		94	sub $t6, $t8, $t9		sub $14, $24, $25
        insts[38] <= 32'b000000_00000_01110_01110_11111_000011; //		98	sra $t6, $t6, 0x1F	#fetch the sign bit	sra $14, $14, 0x1F
        insts[39] <= 32'b000100_01110_00000_0000000000000010; //		9C	beq $t6, $zero, nochange	#if(arr[k] > arr[k+1])	beq $14, $0, nochange
        insts[40] <= 32'b101011_11101_11000_0000000000000100; //		A0	sw  $t8, 4($sp)		sw $24, 4, $29
        insts[41] <= 32'b101011_11101_11001_0000000000000000; //		A4	sw  $t9, 0($sp)	#swap(arr[k], arr[k+1]);	sw $25, 0, $29
        insts[42] <= 32'b001000_01010_01010_0000000000000001; //	nochange:	A8	addi $t2, $t2, 0x1	#k++;	addi $10, $10, 0x1
        insts[43] <= 32'b001000_11101_11101_0000000000000100; //		AC	addi $sp, $sp, 0x4	#locate arr[k]	addi $29, $29, 0x4
        insts[44] <= 32'b000010_00000000000000000000100001; //		B0	j innerloop		j innerloop
        insts[45] <= 32'b000000_00000_01011_01100_00010_000000; //	endinner:	B4	sll $t4, $t3, 0x2		sll $12, $11, 0x2
        insts[46] <= 32'b000000_11101_01100_11101_00000_100010; //		B8	sub $sp, $sp, $t4	#locate arr[0]	sub $29, $29, $12
        insts[47] <= 32'b001000_01000_01000_0000000000000001; //		BC	addi $t0, $t0, 0x1	#i++;	addi $8, $8, 0x1
        insts[48] <= 32'b000010_00000000000000000000011101; //		C0	j outerloop		j outerloop
        insts[49] <= 32'b001101_00000_01110_0000000000000100; //	endouter:	C4	ori $t6, $zero, 0x4	#t6 = 4	ori $14, $0, 0x4
        insts[50] <= 32'b000000_11101_01110_11101_00000_100010; //		C8	sub $sp, $sp, $t6	#locate arr[-1]	sub $29, $29, $14
        insts[51] <= 32'b001000_11101_11101_0000000000000100; //		CC	addi $sp, $sp, 0x4	#locate arr[0]	addi $29, $29, 0x4
        insts[52] <= 32'b100011_11101_10001_0000000000000000; //		D0	lw  $s1, 0($sp)	#s1 = arr[0];	lw $17, 0, $29
        insts[53] <= 32'b001000_11101_11101_0000000000000100; //		D4	addi $sp, $sp, 0x4	#locate arr[1]	addi $29, $29, 0x4
        insts[54] <= 32'b100011_11101_10010_0000000000000000; //		D8	lw  $s2, 0($sp)	#s2 = arr[1];	lw $18, 0, $29
        insts[55] <= 32'b001000_11101_11101_0000000000000100; //		DC	addi $sp, $sp, 0x4	#locate arr[2]	addi $29, $29, 0x4
        insts[56] <= 32'b100011_11101_10011_0000000000000000; //		E0	lw  $s3, 0($sp)	#s3 = arr[2];	lw $19, 0, $29
        insts[57] <= 32'b001000_11101_11101_0000000000000100; //		E4	addi $sp, $sp, 0x4	#locate arr[3]	addi $29, $29, 0x4
        insts[58] <= 32'b100011_11101_10100_0000000000000000; //		E8	lw  $s4, 0($sp)	#s4 = arr[3];	lw $20, 0, $29
        insts[59] <= 32'b001000_11101_11101_0000000000000100; //		EC	addi $sp, $sp, 0x4	#locate arr[4]	addi $29, $29, 0x4
        insts[60] <= 32'b100011_11101_10101_0000000000000000; //		F0	lw  $s5, 0($sp)	#s5 = arr[4];	lw $21, 0, $29
        insts[61] <= 32'b000000_11111_00000_00000_00000_001000; //	endprint:	F4	jr $ra		jr $31
        insts[62] <= 32'b001111_00000_10110_1111111111111111; //	F8	endprogram:	lui $s6, 0xFFFF	#End of bubble sort; lui test	lui $22, 0xFFFF
        insts[63] <= 32'b001100_10110_10110_0000000011001100; //	FC		andi $s6, $s6, 0xCC	#andi test	andi $22, $22, 0xCC
        insts[64] <= 32'b000101_10110_11101_0000000000001100; //	100		bne $s6, $sp, endtest	#bne test	bne $22, $29, 0xC

    end

    // Data Write
    always @(posedge clk) begin
        if (wena) begin
            // Little Endian
            mem[addr16] <= data_in[7:0];
            mem[addr16 + 16'd1] <= data_in[15:8];
            mem[addr16 + 16'd2] <= data_in[23:16];
            mem[addr16 + 16'd3] <= data_in[31:24];
        end
    end

    integer i, mi;
    always @(*) begin
        // Data Read
        data_out <= {mem[addr16 + 32'd3], mem[addr16 + 32'd2], mem[addr16 + 32'd1], mem[addr16]};

        // Instruction memory
        // Instruction address begins at 16'd0 (0x0000)
        for (i = 0; i < ins_num; i = i+1) begin
            mi = i << 2;

            mem[mi + 16'd0] <= insts[i][7:0];
            mem[mi + 16'd1] <= insts[i][15:8];
            mem[mi + 16'd2] <= insts[i][23:16];
            mem[mi + 16'd3] <= insts[i][31:24];
        end
    end

endmodule