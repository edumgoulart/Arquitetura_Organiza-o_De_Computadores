.text
#Faça um programa que some os números decimais 326, -211, 311 e -684
#e escreva o resultado no registrador $t0.
addi $t1, $zero, 326 #t1 = 326
addi $t2, $zero, -211 #t2 = -211
addi $t3, $zero, 311 #t3 = 311
addi $t4, $zero, -684 #t4 = -684

add $t5, $t1, $t2 #t5 = t1+t2
add $t6, $t3, $t4 #t6 = t3+t4
add $t0, $t5, $t6 #t0 = t5+t6