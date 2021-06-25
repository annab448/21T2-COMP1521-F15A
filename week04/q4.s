
# x	$t0
main:
	la	$a0, prompt	#printf("Enter a number: ");
	li	$v0, 4
	syscall

	li	$v0, 5		# scanf("%d", &x);
	syscall
	move	$t0, $v0

	ble	$t0, 100, big_small
	bge	$t0, 1000, big_small
	
	la	$a0, medium_msg
	j	end
big_small:
	la	$a0, big_small_msg

end:
	li	$v0, 4
	syscall

	li	$v0, 1		# return 0;
	jr	$ra

	.data

prompt:
	.asciiz "Enter a number: "
medium_msg:
	.asciiz "medium\n"
big_small_msg:
	.asciiz "small/big\n"
