.text
#Escreva a sequência 0x12345678 em $t1. A seguir, escreva um
#código que inverta a sequência, escrevendo 0x87654321 em $t2.
#Obviamente o código deve inverter os bits de $t1 e não
#simplesmente escrever 0x87654321 diretamente em $t2.

ori $t1, $zero, 0x12345678 #t1 = 0x12345678 | 00010010 00110100 01010110 01111000 
# t2 tem que ser igual a         0x87654321 | 10000111 01100101 01000011 00100001
# 8 partes iguais, usar o shift pra eliminar as partes indesejadas (4 bits), e usar or no $t2 para adicionar

sll $t2, $t1, 28 # t2 = 0x80000000 | 10000000 00000000 00000000 00000000

srl $t3, $t1, 4  # t3 = 0x01234567 | 00000001 00100011 01000101 01100111
sll $t3, $t3, 28 # t3 = 0x70000000 | 01110000 00000000 00000000 00000000
srl $t3, $t3, 4  # t3 = 0x07000000 | 00000111 00000000 00000000 00000000
or $t2, $t3, $t2 # t2 = 0x87000000 | 10000000 00000000 00000000 00000000

srl $t3, $t1, 8  # t3 = 0x00123456 | 
sll $t3, $t3, 28 # t3 = 0x60000000 | 
srl $t3, $t3, 8  # t3 = 0x00600000 | 
or $t2, $t3, $t2 # t2 = 0x87600000 | 

srl $t3, $t1, 12 # t3 = 0x00012345 | 
sll $t3, $t3, 28 # t3 = 0x50000000 | 
srl $t3, $t3, 12 # t3 = 0x00050000 | 
or $t2, $t3, $t2 # t2 = 0x87650000 | 

srl $t3, $t1, 16 # t3 = 0x00001234 | 
sll $t3, $t3, 28 # t3 = 0x40000000 | 
srl $t3, $t3, 16 # t3 = 0x00004000 | 
or $t2, $t3, $t2 # t2 = 0x87654000 | 

srl $t3, $t1, 20 # t3 = 0x00000123 | 
sll $t3, $t3, 28 # t3 = 0x30000000 | 
srl $t3, $t3, 20 # t3 = 0x00000300 | 
or $t2, $t3, $t2 # t2 = 0x87654300 | 

srl $t3, $t1, 24 # t3 = 0x00000012 | 
sll $t3, $t3, 28 # t3 = 0x20000000 | 
srl $t3, $t3, 24 # t3 = 0x00000020 | 
or $t2, $t3, $t2 # t2 = 0x87654320 |

srl $t3, $t1, 28 # t3 = 0x00000001 |
or $t2, $t3, $t2 # t2 = 0x87654321 |
