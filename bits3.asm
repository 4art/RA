# file: bits3.asm
# first examples using MIPS-assembler
# elementary bit operations
# read and write from data section
#
# registers: 
#	t0, t1 (arguments)
#	t2 (results)

.text
	li	$t0, 0xabcd1234	# load constant into register t1

	la	$s0, masks
	la	$s1, results

	lw	$t1, 0($s0)
	and	$t2, $t0, $t1
	sw	$t2, 0($s1)

	lw	$t1, 4($s0)
	and	$t2, $t0, $t1
	sw	$t2, 4($s1)

	lw	$t1, 8($s0)
	and	$t2, $t0, $t1
	sw	$t2, 8($s1)

	lw	$t1, 12($s0)
	and	$t2, $t0, $t1
	sw	$t2, 12($s1)

#	to fulfill by you!
#	same operations with "t0 or ~t1"
#	write results to the next positions in data section

#	end of supplementary operations
	li	$v0, 10		# load syscall 10 (exit) into syscall reg.
	syscall			# execute syscall (doit)

.data
masks:	.word	0x000000ff , 0x0000ff00 , 0x00ff0000 , 0xff000000
results:	.space	64
# end of file
