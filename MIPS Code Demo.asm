#Bubble sort
########################################################################################
#Pseudo code
#
#void BubbleSort(int n, int* arr) {
#	for(int i = 0; i < n-1; i++) {
#		for(int k = 0; k < n-i-1; k++) {
#			if(arr[k] > arr[k+1]) {
#				int temp = arr[k];
#				arr[k] = arr[k+1];
#				arr[k+1] = temp;
#			}
#		}
#	}
#}
#
#int main(){
#	int n = 5;
#	int arr[5];
#	arr[0] = ...;
#   arr[1] = ...;
#   arr[2] = ...;
#   arr[3] = ...;
#   arr[4] = ...;
#	BubbleSort(n,arr);
#	return 0;
#}
########################################################################################
#Cross-reference
#
#$zero: 0
#$a0: argument n
#$sp: $29
#$ra: $31
#
#$s0: n
#$s1: arr[0]
#$s2: arr[1]
#$s3: arr[2]
#$s4: arr[3]
#$s5: arr[4]
#
#$t6: Really 'temporary' value
#
#$t7: n (In function BubbleSort)
#
#$t0: i
#$t1: n-1
#$t2: k
#$t3: n-1-i
#$t4: 4*(n-i-1) (For memory)
#$t5: 4*n (For memory)
#
#$t8: arr[k]
#$t9: arr[k+1]
#
#$s6: for test of other instructions
########################################################################################
initialization:	ori $sp, $zero, 0xFFFFFFFC	#ori $sp, $zero, 0xFFFC	
	ori $s1, $zero, 0x4	
	srl $s2, $s1, 0x1	
	and $s3, $s1, $s2	
	add $s4, $s1, $s2	
	xori $s5, $zero, 0x1	
main:	ori $s0, $zero, 0x5	#int n = 5;
	sll $t5, $s0, 0x2	#t5 = 4*n
	sub $sp, $sp, $t5	#int arr[n];
	addi $sp, $sp, 0x4	#locate arr[0]
	sw  $s1, 0($sp)	#arr[0] = s1;
	addi $sp, $sp, 0x4	#locate arr[1]
	sw  $s2, 0($sp)	#arr[1] = s2;
	addi $sp, $sp, 0x4	#locate arr[2]
	sw  $s3, 0($sp)	#arr[2] = s3;
	addi $sp, $sp, 0x4	#locate arr[3]
	sw  $s4, 0($sp)	#arr[3] = s4;
	addi $sp, $sp, 0x4	#locate arr[4]
	sw  $s5, 0($sp)	#arr[4] = s5;
	or  $a0, $s0, $zero	#a0 = n
	jal BubbleSort	#BubbleSort(n,arr);
	j   endprogram	#return 0;
BubbleSort:	xor $t7, $a0, $zero	#t7 = n; XOR is the same as OR
	sll $t5, $a0, 0x2	#t5 = 4*n
	ori $t0, $zero, 0x0	#int i = 0;
	ori $t6, $zero, 0x1	#t6 = 1
	sub $t1, $t7, $t6	#t1 = n-1
	sub $sp, $sp, $t5	#initialize stack, locate arr[-1]
	addi $sp, $sp, 0x4	#locate arr[0]
outerloop:	sub $t6, $t0, $t1	
	beq $t6, $zero, endouter	#i < n-1;
	ori $t2, $zero, 0x0	#int k = 0;
	sub $t3, $t1, $t0	#t3 = n-1-i
innerloop:	sub $t6, $t2, $t3	
	beq $t6, $zero, endinner	#k < n-i-1;
	lw  $t8, 0($sp)	#t8 = arr[k]
	lw  $t9, 4($sp)	#t9 = arr[k+1]
	sub $t6, $t8, $t9	
	sra $t6, $t6, 0x1F	#fetch the sign bit
	beq $t6, $zero, nochange	#if(arr[k] > arr[k+1])
	sw  $t8, 4($sp)	
	sw  $t9, 0($sp)	#swap(arr[k], arr[k+1]);
nochange:	addi $t2, $t2, 0x1	#k++;
	addi $sp, $sp, 0x4	#locate arr[k]
	j innerloop	
endinner:	sll $t4, $t3, 0x2	
	sub $sp, $sp, $t4	#locate arr[0]
	addi $t0, $t0, 0x1	#i++;
	j outerloop	
endouter:	ori $t6, $zero, 0x4	#t6 = 4
	sub $sp, $sp, $t6	#locate arr[-1]
	addi $sp, $sp, 0x4	#locate arr[0]
	lw  $s1, 0($sp)	#s1 = arr[0];
	addi $sp, $sp, 0x4	#locate arr[1]
	lw  $s2, 0($sp)	#s2 = arr[1];
	addi $sp, $sp, 0x4	#locate arr[2]
	lw  $s3, 0($sp)	#s3 = arr[2];
	addi $sp, $sp, 0x4	#locate arr[3]
	lw  $s4, 0($sp)	#s4 = arr[3];
	addi $sp, $sp, 0x4	#locate arr[4]
	lw  $s5, 0($sp)	#s5 = arr[4];
endprint:	jr $ra	
endprogram:	lui $s6, 0xFFFF	#End of bubble sort; lui test
	andi $s6, $s6, 0xCC	#andi test
	bne $s6, $sp, endtest	#bne test
endtest:		