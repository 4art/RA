# file: add1.asm
# first example using MIPS-assembler
# add 3 and 5 (given as fixed data)
#
# registers: 
#	t1, t2 (arguments)
#	t0 (result)

	li	$t1, 3		# load constant 3 into register t1
	addi	$t2, $zero, 5	# load constant 5 into register t2 
	add	$t0, $t1, $t2	# $t0 = $t1 + $t2

	li	$v0, 10		# load syscall 10 (exit) into syscall reg.
	syscall			# execute syscall (doit)

# end of file
