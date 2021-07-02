	.data
numbers:
	.word 0 0 0 0 0 0 0 0 0 0

	.text
main:
	li	$t0, 0		# i = 0;

main__loop:
	bge	$t0, 10, main__end

	li	$v0, 5		# scanf("%d") => result in $v0
	syscall

	la	$t1, numbers		
	mul	$t2, $t0, 4
	add	$t2, $t2, $t1

	sw	$v0, ($t2)

	addiu	$t0, $t0, 1
	j main__loop
	

main__end:

	jr	$ra
