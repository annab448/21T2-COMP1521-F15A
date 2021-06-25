# x	$t0

main:
	li	$t0, 24		#int x = 24;

loop:
	bge	$t0, 42, end	# if  (x >= 42) goto end;
	
	move	$a0, $t0	# printf("%d\n",x);
	li	$v0, 1
	syscall

	li	$a0, '\n'
	li	$v0, 11
	syscall
	
	addi	$t0, $t0, 3
	
	j loop			# goto loop;
	

end:
	li	$v0, 0
	jr	$ra
