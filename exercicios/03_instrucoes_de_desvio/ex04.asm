#Uma temperatura, armazenada em $t0, pode ficar em dois intervalos:
#20 ≤ temp ≤ 40 e
#60 ≤ temp ≤ 80.
#Escreva um programa que coloque uma flag (registrador $t1) para 1 se a
#temperatura está entre os valores permitidos e para 0 caso contrário.

ori $t0, $zero, 37     # temp = (coloque qualquer valor aqui)
addi $t3, $zero, 1

slti $t1, $t0, 41 #temp <= 40 t1 = 1
bne $t1, $t3, segundo # se temp for maior que 40 vai pra segunda tentativa
slti $t2, $t0, 20 #temp < 20 t2 = 1
slti $t1, $t2, 1  #t2 < 1 (só dá um se a temp não for menor que 20) t1 = 1
beq $t1, $t3, fim


segundo: slti $t1, $t0, 81 #temp <= 80 t1 = 1
	 bne $t1, $t3, fim # se temp for maior que 80 encerra com t1 = 0
	 slti $t2, $t0, 60 #temp < 60 t2 = 1
	 slti $t1, $t2, 1  #t2 < 1 (só dá um se a temp não for menor que 60) t1 = 1

fim: addi $t3, $zero, 0 #faz nada