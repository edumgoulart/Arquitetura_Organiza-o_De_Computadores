#Faça um programa que calcule a seguinte equação:
#y = (9x + 7)/(2x + 8)
#Armazene x em $t1, com a instrução addi $t1, $zero, x, substituindo x pelo valor
#desejado, e sempre que precisar o valor de x, utilize o valor armazenado noregistrador $t1.
#Armazene o quociente da divisão em $t2 e o resto em $t3.
#Responda o que acontece quando x = -4.

 addi $t1, $zero, -4  #t1 = X
 
 addi $t4, $zero, 9 #t4 = 9 = cte
addi $t5, $zero, 7 #t5 = 7 = cte
addi $t6, $zero, 2 #t6 = 2 = cte
addi $t7, $zero, 8 #t7 = 8 = cte

mult $t1, $t4
mflo $s0 #s0 = 9x

mult $t1, $t6
mflo $s1 #s1 = 2x

add $s2, $s0, $t5 # s2 = 9x +7
add $s3, $s1, $t7 # s3 = 2x + 8

div $s2, $s3 # hi = (9x+7) % (2x+8), lo = (9x+7) / (2x+8)
mflo $t2
mfhi $t3

#quando x = -4 e acontece uma divisão por 0 o processador pega a ultima operação que estava no hi e no lo, a operação não acontece.