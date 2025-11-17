.data
a: .word -3
b: .word 7
c: .word 5
d: .word -2
e: .word 8
x: .word 4
y: .space 4

.text

    lui $s0, 0x1001

    lw $t0, 0($s0)           # t0 = a
    lw $t1, 4($s0)           # t1 = b
    lw $t2, 8($s0)           # t2 = c
    lw $t3, 12($s0)          # t3 = d
    lw $t4, 16($s0)          # t4 = e
    lw $t5, 20($s0)          # t5 = x

    mult $t5, $t5        # x * x
    mflo $t6             # t6 = x^2

    mult $t6, $t5        # x^2 * x
    mflo $t7             # t7 = x^3

    mult $t7, $t5        # x^3 * x
    mflo $t8             # t8 = x^4


    # -a * x^4
    mult $t0, $t8        # a * x^4
    mflo $t9             # t9 = a*x^4
    sub $t9, $zero, $t9  # t9 = -a*x^4

    # b * x^3
    mult $t1, $t7        # b * x^3
    mflo $t10            # t10 = b*x^3

    # -c * x^2
    mult $t2, $t6        # c * x^2
    mflo $t11            # t11 = c*x^2
    sub $t11, $zero, $t11  # t11 = -c*x^2

    # d * x
    mult $t3, $t5        # d * x
    mflo $t12            # t12 = d*x

    # -e
    sub $t13, $zero, $t4 # t13 = -e


    add $t14, $t9, $t10  # t14 = -a*x^4 + b*x^3
    add $t14, $t14, $t11 # t14 = -a*x^4 + b*x^3 - c*x^2
    add $t14, $t14, $t12 # t14 = -a*x^4 + b*x^3 - c*x^2 + d*x
    add $t14, $t14, $t13 # t14 = -a*x^4 + b*x^3 - c*x^2 + d*x - e

    sw $t14, y            # y = -a*x^4 + b*x^3 - c*x^2 + d*x - e
