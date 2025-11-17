#Escreva um programa que leia um valor x > 0 da memória (posição 0x10010000) e
#calcule o x-ésimo termo da série de Fibonacci:
# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, ...
#Escreva o x-ésimo termo da série (y) em uma palavra (4 bytes) de memória. O
#resultado deve ser armazenado, obrigatoriamente, na posição 0x10010004 da memória .data

.data
x: .word 7
y: .space 4

.text
lui $t0, 0x1001
lw $t1, 0($t0)

addi $t2, $zero, 0 #t2 contador
addi $t3, $zero, 0 #menor
addi $t4, $zero, 1 #maior
add $t5, $t3, $t4 #t5 novo

loop:   addi $t2, $t2, 1  # t2++
	beq $t1, $t2, guarda # t1 == t2 sai do loop
	add $t5, $t3, $t4 #t5 = t4 + t3
	addi $t3, $t4, 0 #t3 = t4
	addi $t4, $t5, 0 #t4 = t5
	j loop

guarda: sw $t5, 4($t0)