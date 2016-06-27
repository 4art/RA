# file: data4.asm
# first examples using MIPS-assembler
# Initialize data section and get data from data section
#
# reserve space for 80 Bytes
# write some ASCII-letters to data section
# Write 'H' 'e' 'l' 'l' 'o' ' ' 'W', 'o', 'r' 'l' 'd' '\0'
#
# registers: 
#	use t0 for adress base
#	use t1-t7 for temporary values

.text:

.start:
	la	$t0, somewords
	li	$t1, 'l'
	sb	$t1, 0($t0)
	li 	$t2, 'l'
	sb	$t2, 1($t0)
	
	
	li 	$t3, 'e'
	sb	$t3, 2($t0)
	li	$t4, 'H'
	sb	$t4, 3($t0)	
	li 	$t5, 'o'
	sb	$t5, 4($t0)
	li 	$t6, 'W'
	sb	$t6, 5($t0)
	li 	$t7, ' '
	sb	$t7, 6($t0)
	li	$t8, 'o'
	sb	$t8, 7($t0)
	li	$s0, 'd'
	sb	$s0, 9($t0)
	li	$s1, 'l'
	sb	$s1, 10($t0)
	li	$s2, 'r'
	sb	$s2, 11($t0)
	
.data:
somewords:	.space 80


# end of file
