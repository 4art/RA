.text
	li	$t0, 5	# load limit for loop
	li	$t1, 100		# load increment for loop
loop_begin:
	beq	$t0, 0, True
	add	$t2, $t0, $t1
	j	Endif
	
True:	
	add	$t1, $t1, 1
	
Endif:
	li	$v0, 10
	syscall
	