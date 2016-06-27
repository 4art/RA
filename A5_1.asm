.text 
xor $8, $8, 0
xori $9, $zero, 11
li $10,4096
li $11, -1
li $12, -32768
xori $13, $zero, 32768
xori $14, $zero, 4294901760
add $16, $10, $9
sub $17, $10, $9
not $18, $9
add $18, $18, 1
add $18, $18, $10
sll $19, $13, 5
sra $20, $13, 5
sra $21, $12, 5
srav $22, $13, $9
li $24, 5322
li $25, 75
divu $24, $25
mfhi $2
mflo $3
li $15, 134217727
addiu $26, $15, 1
addi $27, $15, 1
clo $28, $11
clo $29, $14
.data
somebytes:.byte  0xaa
someshort:.half 0xbbbb
somelong: .word 0xcccccccc

