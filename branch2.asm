# file: branch2.asm
# example using MIPS-assembler
# simple branch command
#
# read string from data section
# until 'x' occurs

.text
	la	$t0, line_of_text	# get adress of text
	add	$t1, $zero, $t0		# first adress
	li	$t3, 'x'		# final char

text_loop:
	lb	$t2, 0($t1)		# first char
	beq	$t2, $t3, end_text	# quit loop if char eq 'x'
	add	$t1, $t1, 1		# next adress
	j	text_loop		# continue loop

end_text:

	li	$v0, 10		# load syscall 10 (exit) into syscall reg.
	syscall			# execute syscall (doit)

.data
line_of_text:	.asciiz		"This is an exciting string"

# end of file
