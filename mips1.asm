.text
addi $t0, $zero, 10 #t0 = 10
addi $t1, $zero, 5 #t1 = 5
add $t2 , $t1, $t0 #t2 = t1+t0

mult $t0, $t1 #lo = t0 * t1
mflo $t3 # move from lo to t3

div $t0, $t1 #lo = t0/t1 hi = t0%t1
mfhi $t4 # resto
mflo $t5 # quociente

sll $s0, $t0, 1 #shift left logic
srl $s1, $t0, 1 #shift right logic
sra $s2, $t0, 1 #shift right aritmetic
