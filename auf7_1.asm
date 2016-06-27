.text
	li	$t0, 5	# load limit for loop
	li	$t1, 100		# load increment for loop
#
#	bge	$t0, $t1, loop_end
#	add	$s0, $t0, $t1
#	addi	$t0, $t0, 1
#	j loop_begin

#loop_end:
#	li	$v0, 10		# load syscall 10 (exit) into syscall reg.
#	syscall	
loop_begin:
	bge $t0,$t1, else 
	sub $t2, $t1, $t0
	j Endif
else:
	sub $t2, $t0, $t1
Endif:
	li	$v0, 10		# load syscall 10 (exit) into syscall reg.
	syscall