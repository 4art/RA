# file: data3.asm
# first examples using MIPS-assembler
# Initialize data section and get data from data section
#
# write word to data-section
#
# registers: 
#	t1 (arguments)
#	t0 (adress)

.text:
.start:
	la	$t0, somewords	# adress of data in t0
	lui	$t1, 0xabcd	# write upper half word
	ori	$t1, 0x1234	# write lower half word
	sw	$t1, 0($t0)	# store word to data section

	lui	$t2, 0xffff	# upper half word
	ori	$t2, 0x0000	# lower half word
	xor	$t3, $t1, $t2	# bit operation

	sw	$t3, 8($t0)	# write to data section

	li	$v0, 10		# load syscall 10 (exit) into syscall reg.
	syscall			# execute syscall (doit)

.data:
somewords:	.space 12	# reserve 12 Bytes


# end of file
