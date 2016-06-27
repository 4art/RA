.text
	li $t0, 0
	li $t1, 36
	li $t2, 36
	
loop_begin:
	bge $t0, $t1, Exit #at 10 we go to Exit, defined below
    	addi $t0, $t0, 1 #increment counter
    	add $t2, $t2, $t0
    	j loop_begin
Exit:
	li $v0, 10
	syscall