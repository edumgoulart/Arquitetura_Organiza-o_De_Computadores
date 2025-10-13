.text
#Faça um programa que escreva o valor 0xDECADA70 no registrador $t7, incluindo
#um dígito hexadecimal por vez (isto é, insira letra por letra, individualmente) no registrador.
ori $t7, $zero, 0xD # t7 = 0x0000000D
sll $t7, $t7, 4 # t7 = 0x000000D0
ori $t7, $t7, 0xE # t7 = 0x000000DE
sll $t7, $t7, 4 # t7 = 0x00000DE0
ori $t7, $t7, 0xC # t7 = 0x00000DEC
sll $t7, $t7, 4 # t7 = 0x0000DEC0
ori $t7, $t7, 0xA # t7 = 0x0000DECA
sll $t7, $t7, 4 # t7 = 0x000DECA0
ori $t7, $t7, 0xD # t7 = 0x000DECAD
sll $t7, $t7, 4 # t7 = 0x00DECAD0
ori $t7, $t7, 0xA # t7 = 0x00DECADA
sll $t7, $t7, 4 # t7 = 0x0DECADA0
ori $t7, $t7, 0x7 # t7 = 0x0DECADA7
sll $t7, $t7, 4 # t7 = 0xDECADA70
