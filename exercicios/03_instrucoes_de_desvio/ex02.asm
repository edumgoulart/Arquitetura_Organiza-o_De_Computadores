#Escreva um programa que calcule:
#1 + 2 + 3 + … + 333
#Escreva o resultado (y) em uma palavra (4 bytes) de memória. O resultado deve ser
#armazenado, obrigatoriamente, na posição 0x10010000 da memória .data

.data
y: .space 4

.text

lui $t0, 0x1001

addi $t1, $zero, 333 #t1 = 333
addi $t2, $zero, 0   #t2 = 0
addi $t3, $zero, 0   #t3 = 0

soma:   addi $t2, $t2, 1     #t2++
	add $t3, $t3, $t2    #t3 += t2

#Se t2 for igual a 333 saia do loop
beq $t1, $t2, guarda
j soma

guarda: sw $t3, 0($t0)
