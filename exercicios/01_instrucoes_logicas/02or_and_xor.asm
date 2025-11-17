#Escreva 0xAAAAAAAA em $t1. Faça um shift de um bit para a direita desse valor e 
#coloque o resultado em $t2, deixando $t1 inalterado. 
#Em $t3, $t4 e $t5 coloque os resultados das operações or, and e xor entre $t1 e $t2, respectivamente.
#Em comentários no final do código, explique os resultados obtidos, mostrando os valores binários.

ori $t1, $zero, 0xAAAA # t1 = 0x0000AAAA
sll $t1, $t1, 16 # t1 = 0xAAAA0000
ori $t1, $t1, 0xAAAA # t1 = 0xAAAAAAAA
#0xAAAAAAAA = 10101010 10101010 10101010 10101010

srl $t2, $t1, 1  # t2 = 0x55555555
#0x55555555    = 01010101 01010101 01010101 01010101

or $t3, $t1, $t2    # t3 = t1 or t2
# t3 = 0xFFFFFFFF = 
#10101010 10101010 10101010 10101010
#or
#01010101 01010101 01010101 0101010
#-------------------------------------------------------------
#11111111 11111111 11111111 11111111

and $t4, $t1, $t2 # t4 = t1 and t2
# t4 = 0x00000000 = 
#10101010 10101010 10101010 10101010
#and
#01010101 01010101 01010101 0101010
#-------------------------------------------------------------
#00000000 00000000 00000000 00000000

xor $t5, $t1, $t2 # t5 = t1 xor t2
# t5 = 0xFFFFFFFF = 
#10101010 10101010 10101010 10101010
#xor
#01010101 01010101 01010101 0101010
#-------------------------------------------------------------
#11111111 11111111 11111111 11111111