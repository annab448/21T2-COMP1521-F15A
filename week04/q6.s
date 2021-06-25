
# i	$t0
# j	$t1
main:
	li	$t0, 1		#int i = 1;

outer_loop:
	bgt	$t0, 10, outer_end	# if ( i > 10 ) goto outer_end;
	
	li	$t1, 0			# int j = 0;

inner_loop:
	bge	$t1, $t0, inner_end	# if (j >= i) goto inner_end;
	
	li      $a0, '*'		# printf("*");
        li      $v0, 11	
        syscall

	addi	$t1, $t1, 1		# j ++;

	j inner_loop			# goto inner_loop;

inner_end:
	li	$a0, '\n'		# printf("\n");
	li	$v0, 11
	syscall

	addi	$t0, $t0, 1		#  i ++;
	j outer_loop			# goto outer_loop;

outer_end:
	li	$v0, 0			# return 0;
	jr	$ra
