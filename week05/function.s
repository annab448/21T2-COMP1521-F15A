main:
	# $ra => where we need to go after all our code
	# $sp => stack pointer
#prologue
	addiu	$sp, $sp, -4
	sw	$ra, ($sp)

	addiu	$sp, $sp, -4
	sw	$s0, ($sp)

	addiu	$sp, $sp, -4
	sw	$s1, ($sp)

#main_body
	li	$v0, 5		# scanf("%d", &num1);
	syscall
	move	$s0, $v0	# $s0 = num1

	li      $v0, 5          # scanf("%d", &num2);
        syscall
        move    $s1, $v0        # $s1 = num2
	
	move	$a0, $s0	# num1 = square_num(num1);
	jal	square_num 	# square is in $v0
	move	$s0, $v0

	move    $a0, $s1        # num2 = square_num(num2);
        jal     square_num      # square is in $v0
	move	$s1, $v0

	addu	$a0, $s0, $s1	# printf("%d\n", num1 + num2);
	li	$v0, 1
	syscall

	li	$a0, '\n'
	li	$v0, 11
	syscall

#epilogue
	lw	$s1, ($sp)
	addiu	$sp, $sp, 4

	lw	$s0, ($sp)
	addiu	$sp, $sp, 4

	lw	$ra, ($sp)
	addiu	$sp, $sp, 4

	jr	$ra
	

square_num:

        mul     $t0, $a0, $a0
        move    $v0, $t0
        jr      $ra	
