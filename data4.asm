# file: data4.asm
# first examples using MIPS-assembler
# Initialize data section and get data from data section
#
# write word to data-section
# reserve space for 10 words
# write some data to data section
# words: 0xffffffff
#	 0xa12b3401
#	 0x00003401
#	 decimal 123
#	 decimal -445
#	 decimal -1
#
# registers: 
#	use t0 for adress base
#	use t1-t7 for temporary values

.text:
.start: 
	la $t0, somewords
	lui $t1, 0xffff
	ori $t1, 0xffff
	sw $t1, 0($t0)
	
	lui $t2, 0xa12b
	ori $t2, 0x3401
	sw $t2, 4($t0)

	li $t3, 0x00003401
	sw $t3, 8($t0)	
	
	lui $t4, 120
	ori $t4, 3
	sw $t4, 12($t0)	
	
	li $t5, -445
	sw $t5, 16($t0)	
	
	li $t6, -1
	sw $t6, 20($t0)	
	
.data:
somewords:	.space 10

# end of file
