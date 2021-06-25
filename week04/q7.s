
# n	$t0
# fac	$t1
# i	$t3
main:

	la	$a0, n_msg	# printf("n  = ");
	li	$v0, 4
	syscall

	li	$v0, 5		# scanf("%d", &n);
	syscall
	move	$t0, $v0

	li	$t1, 1		# int fac = 1;
	li	$t3, 1		# int i = 1;

loop:
	bgt	$t3, $t0, end	# if (i > n) goto end;

	mul	$t1, $t1, $t3	# fac = fac * i
	addi	$t3, $t3, 1	# i ++;
	
	j loop			# goto loop;

end:
	la	$a0, n_fac_msg	# printf ("n! = %d\n", fac);
	li	$v0, 4
	syscall
	
	move	$a0, $t1
	li	$v0, 1
	syscall

	li	$a0, '\n'
	li	$v0, 11
	syscall
	
	li	$v0, 1		# return 0;
	jr	$ra
	

	.data
n_msg:
	.asciiz "n  = "
n_fac_msg:
	.asciiz "n! = "
