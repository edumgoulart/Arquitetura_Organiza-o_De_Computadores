.text
#Faça um programa que calcule a seguinte equação:
#y = 3(x)^2 - 5x + 13
#Armazene x no registrador $t5 com a instrução addi $t5, $zero, x, substituindo x
#pelo valor desejado, e sempre que precisar o valor de x, utilize o valor armazenado no registrador $t5.
#Armazene o resultado y no registrador $t6.
#Faça teste com diferentes valores positivos e negativos de x.

addi $t5, $zero, 1 # t5 = X

addi $t0, $zero, 3 #t0 = 3 = cte
addi $t1, $zero, -5 #t1 = -5 = cte
addi $t2, $zero, 13 #t2 = 13 = cte

mult $t5, $t5 # x^2
mflo $t3 # t3 = x^2
mult $t0, $t3 # 3(x)^2
mflo $t3 #t3 = 3(x)^2

mult $t1, $t5 # -5x
mflo $t4 #t4 = -5x

add $t7, $t3, $t4 # t7 = 3(x)^2 - 5x
add $t6, $t7, $t2 # t6 = 3(x)^2 - 5x + 13