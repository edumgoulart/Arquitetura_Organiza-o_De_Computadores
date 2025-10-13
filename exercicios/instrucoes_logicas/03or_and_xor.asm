.text
#Comece um programa pela instrução: ori $t1, $zero, 0x01.
#Usando apenas as instruções lógicas do tipo R (dois registradores
#como operandos) or, and e xor e instruções de shift (isto é, sem
#usar outras instruções ori além da inicial e nem instruções nor),
#escreva 0xFFFFFFFF em $t1. Procure usar o menor número de instruções possível.

ori $t1, $zero, 0x01 #t1 = 0x00000001

sll $t2, $t1, 1      #t2 = 0x00000002 ou 00000000 00000000 00000000 00000010
or $t1, $t1, $t2     #t1 = 0x00000003 ou 00000000 00000000 00000000 00000011
sll $t2, $t1, 2      #t2 = 0x0000000C ou 00000000 00000000 00000000 00001100
or $t1, $t1, $t2     #t1 = 0x0000000F ou 00000000 00000000 00000000 00001111
sll $t2, $t1, 4      #t2 = 0x000000F0 ou 00000000 00000000 00000000 11110000
or $t1, $t1, $t2     #t1 = 0x000000FF ou 00000000 00000000 00000000 11111111
sll $t2, $t1, 8      #t2 = 0x0000FF00 ou 00000000 00000000 11111111 00000000
or $t1, $t1, $t2     #t1 = 0x0000FFFF ou 00000000 00000000 11111111 11111111
sll $t2, $t1, 16     #t2 = 0xFFFF0000 ou 11111111 11111111 00000000 00000000
or $t1, $t1, $t2     #t1 = 0xFFFFFFFF ou 11111111 11111111 11111111 11111111

