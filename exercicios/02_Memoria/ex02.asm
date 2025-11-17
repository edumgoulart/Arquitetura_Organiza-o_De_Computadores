.data
a: .word 3
y: .space 4

.text

    lui $s0, 0x1001
    lw $t0, 0($s0)            # t0 = a

    mult $t0, $t0         # a * a
    mflo $t1              # t1 = a^2

    mult $t1, $t0         # a^2 * a
    mflo $t2              # t2 = a^3

    addi $t3, $zero, 9    # t3 = 9
    mult $t2, $t3         # 9 * a^3
    mflo $t4              # t4 = 9a^3

    addi $t3, $zero, -5   # t3 = -5
    mult $t1, $t3         # -5 * a^2
    mflo $t5              # t5 = -5a^2

    addi $t3, $zero, 7    # t3 = 7
    mult $t0, $t3         # 7 * a
    mflo $t6              # t6 = 7a

    add $t7, $t4, $t5     # t7 = 9a^3 - 5a^2
    add $t7, $t7, $t6     # t7 = 9a^3 - 5a^2 + 7a
    addi $t7, $t7, 15     # t7 = 9a^3 - 5a^2 + 7a + 15

    sw $t7, y             # y = 9a^3 - 5a^2 + 7a + 15