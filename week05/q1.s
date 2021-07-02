main:
	li	$t0, 2147483647		# $t0 = 0x7FFFFFFF
	li	$t1, 99			# $t1 = 0x63
	addu	$t2, $t1, $t0

	move	$a0, $t2
	li	$v0, 1
	syscall

	li	$a0, '\n'
	li	$v0, 11
	syscall
	

	li	$v0, 0
	jr	$ra

