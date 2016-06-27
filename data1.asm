# file: data1.asm
# first example using MIPS-assembler
# Initialize data section and get data from data section
#
# registers: 
#	t1, t2, t3 (arguments)
#	t0 (adress)

.text:
.start:
	la	$t0, threewords	# adress of data in t0
	lw	$t1, 0($t0)	# get first word of data
	lw	$t2, 4($t0)	# get second word
	lw	$t3, 8($t0)	# get third word

	la	$t0, somespace	# get adress of additional data
	li	$t1, 0x41	# put 'A' to t1
	sb	$t1, 0($t0)	# store content of t1 (1 Byte) to somespace
	li	$t1, 0x42	# put 'B' to t1
	sb	$t1, 1($t0)	# store content of t1 (1 Byte) to 
				# next position in somespace

	li	$v0, 10		# load syscall 10 (exit) into syscall reg.
	syscall			# execute syscall (doit)

.data:
threewords:	.word	97, 22, 67	# reserve and initialize 3 words
somespace:	.space	256	# reserve 256 Bytes of space


# end of file
