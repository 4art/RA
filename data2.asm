# file: data2.asm
# first example using MIPS-assembler
# Initialize data section and get data from data section
#
# write word to data-section
#
# registers: 
#	t1 (arguments)
#	t0 (adress)

.text:
.start:
	la	$t0, oneword	# adress of data in t0
	lui	$t1, 0xabcd	# write upper half word
	ori	$t1, 0x1234	# write lower half word
	sw	$t1, 0($t0)	# store word to data section

	li	$v0, 10		# load syscall 10 (exit) into syscall reg.
	syscall			# execute syscall (doit)

.data:
oneword:	.word		# initialize 1 word


# end of file
