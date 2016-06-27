# file: bits.asm
# first examples using MIPS-assembler
# elementary bit operations
#
# registers: 
#	t0, t1 (arguments)
#	t2 - t7 (results)

	li	$t0, 0xabcd1234	# load constant into register t1
	li	$t1, 0x56789abc	# load constant into register t2 
	or	$t2, $t0, $t1	# $t2 = $t0 | $t1
	and	$t3, $t0, $t1	# $t3 = $t0 & $t1
	xor	$t4, $t0, $t1	# $t4 = $t0 xor $t1
	nor	$t5, $t0, $t1	# $t5 = $t0 nor $t1
	not	$t6, $t0	# $t6 = ~$t0 
	and	$t7, $t0, $t1	# $t7 = $t0 & $t1
	not	$t7, $t7	# $t7 = $t0 nand $t1

	li	$v0, 10		# load syscall 10 (exit) into syscall reg.
	syscall			# execute syscall (doit)

# end of file
