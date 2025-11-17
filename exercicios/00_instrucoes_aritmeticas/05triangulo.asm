.text
#Faça um programa que calcule a área do triângulo equilátero abaixo e escreva o resultado em $t3.
#Armazene b em $t1 e h em $t2 utilizando as instruções addi $t1, $zero, b e
#addi $t2, $zero, h, substituindo b e h pelos valores desejados, e sempre que precisar
#de b e h, utilize os valores armazenados nos registradores $t1 e $t2.
#b: base/lado
#h: altura

addi $t1, $zero, 160 #t1 = b
addi $t2, $zero, 120 #t1 = h

mult $t1, $t2
mflo $t4 #t4 = b * h

sra $t3, $t4, 1 # t3 = bh/2,  move pra direita um bit, dividindo por 2 e armazena em t3.
