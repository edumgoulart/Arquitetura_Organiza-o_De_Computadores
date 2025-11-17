# Exercício 1: y = 32ab - 3a + 7b - 13
.data
a: .word 3
b: .word 5
y: .space 4

.text

    lui $s0, 0x1001
    lw $t0, 0($s0)       # $t1 = a
    lw $t1, 4($s0)       # $t1 = b

    mult $t0, $t1    	# a * b
    mflo $t2		# t2 = ab
    addi $t3, $zero, 32 # t3 = 32
    mult $t2, $t3    	# 32 *ab
    mflo $t4            # t4 = 32ab

    addi $t3, $zero, -3 # t3 = -3
    mult $t0, $t3   	# -3 * a
    mflo $t5		# t5 = -3a

    addi $t3, $zero, 7   # t3 = -3
    mult $t1, $t3   	# 7 * b
    mflo $t6		#t6 = 7b

    addi $t3, $zero, -13   # t3 = -13
    
    add $t3, $t3, $t4
    add $t5, $t5, $t6
    add $t3, $t3, $t5   # t3 = 32ab - 3a + 7b - 13
    

    sw $t3, y            # salva o resultado em y
