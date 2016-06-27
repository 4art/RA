# file: branch1.asm
# example using MIPS-assembler
# simple branch command
#
# loop, incrementing argument until arg >= 100

.text
	li	$t0, 100	# load limit for loop
	li	$t1, 7		# load increment for loop
	xor	$t2, $t2, $t2	# set $t2 to zero

loop_start:
	add	$t2, $t2, $t1	# add increment to $t2
	sub	$t3, $t2, $t0	# differenc of $t2 and limit
	bgez	$t3, loop_end	# goto loop_end, if $t2 >= limit
	j	loop_start

loop_end:
	
	li	$v0, 10		# load syscall 10 (exit) into syscall reg.
	syscall			# execute syscall (doit)

# end of file
