# file: branch4.asm
# example using MIPS-assembler
# simple branch command
#
# realization of while-structure
# x=?
# y=?
# while(x<y)
# { z=x+y ;
#   x++ ; }

.text
	li	$t0, 3			# initialize x
	li	$t1, 25			# initialize y
loop_begin:
	bge	$t0, $t1, loop_end	# if (x>=y) jump to loop_end
	add	$s0, $t0, $t1		# z = x+y
	addi	$t0, $t0, 1		# x++
	j	loop_begin		# iterate

loop_end:
	li	$v0, 10		# load syscall 10 (exit) into syscall reg.
	syscall			# execute syscall (doit)

.data

# end of file
