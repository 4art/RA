# file: add2.asm
# first example using MIPS-assembler
# add 3 and 5 (given as fixed data)
#
# registers: 
#	t0 (argument and result)

	li	$t0, 3		# load constant 3 into register t0
	addi	$t0, $t0, 5	# $t0 = $t0 + 5

	li	$v0, 10		# load syscall 10 (exit) into syscall reg.
	syscall			# execute syscall (doit)

# end of file
