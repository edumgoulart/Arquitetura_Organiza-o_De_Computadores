#Escreva um programa que leia dois halfwords (a e b) da memória e calcule a sua
#divisão se os dois valores forem diferentes e a sua multiplicação se os dois valores
#forem iguais. Escreva o resultado (y) em uma palavra (4 bytes) de memória. O
#resultado deve ser armazenado, obrigatoriamente, na posição 0x10010004 da memória .data

.data
a: .half 5
b: .half 5
y: .space 4

.text

#Carrega os numeros pra t1 e t2
lui $t0, 0x1001
lh $t1, 0($t0)
lh $t2, 2($t0)

#Se forem iguais multiplica
beq $t1, $t2, multi

#Divide a por b e guarda em t3
div $t1, $t2
mflo $t3
j guarda

#multiplica t1 por t2 e guarda em t3
multi: mult $t1, $t2
mflo $t3

#guarda t3 na memória
guarda: sw $t3, 4($t0)