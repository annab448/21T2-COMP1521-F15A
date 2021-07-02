	.data
numbers:
	.word 0 1 2 3 4 5 6 7 8 9	# int numbers[10] = {0,1,2,3,4,5,6,7,8,9};

	.text
main:
	li	$t0, 0			# int i = 0;
main__loop:
	bge	$t0, 10, main__end	# while (i < 10)

#	la	$t2, numbers		# $t2 = address of numbers
	mul	$t3, $t0, 4		# $t3 = i * 4 (size of word)
#	add	$t2, $t2, $t3		# adress of numbers[i]

	lw	$a0, numbers($t3)		# $a0 = numbers[i]
	li	$v0, 1
	syscall
	
	li	$a0, '\n'
	li	$v0, 11
	syscall
	
	addiu	$t0, $t0, 1
	j main__loop
	
main__end:
	jr	$ra
