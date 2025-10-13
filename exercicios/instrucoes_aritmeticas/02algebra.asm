.text
#Escreva um programa que calcule o valor de 4x - 2y + 3z (armazene os valores de x, y e z em $t1, $t2 e $t3,
#respectivamente) e coloque o resultado em $t7. Faça testes com alguns valores diferentes de x, y e z.
#Utilize apenas instruções já vistas na disciplina.

#O addi permite inicializar números negativos
addi $t1, $zero, 1 #t1 = 1 = x
addi $t2, $zero, 1 #t2 = 1 = y
addi $t3, $zero, 1 #t3 = 1 = z
addi $t4, $zero, 4 #t4 = 4 = cte
addi $t5, $zero, -2 #t5 = -2 = cte
addi $t6, $zero, 3 #t6 = 3 = cte

mult $t4, $t1 #lo = 4x
mflo $t7 #t7 = 4x

mult $t5, $t2 #lo = -2y
mflo $s0 #s0 = -2y

mult $t6, $t3 #lo = 3z
mflo $s1 #s1 = 3z

add $t7, $t7, $s0 #t7 = 4x - 2y
add $t7, $t7, $s1 #t7 = 4x - 2y + 3z