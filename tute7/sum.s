


main:
	# prologue
	addiu	$sp, $sp, -4
	sw	$ra, ($sp)

	li	$a0, 11		# int z = sum4(11, 13, 17, 19);
	li	$a1, 13
	li	$a2, 17
	li	$a3, 19
	jal sum4

	move	$t0, $v0	# $t0 = z

	move	$a0, $t0
	li	$v0, 1
	syscall

	li	$a0, '\n'
	li	$v0, 11
	syscall

	# epilogue
	lw	$ra, ($sp)
	addiu	$sp, $sp, 4

	li	$v0, 0
	jr	$ra
sum4:
	# a in $a0
	# b in $a1
	# c in $a2
	# d in $a3
	# e in $s0
	# f in $t0

        # prologue
        addiu   $sp, $sp, -16
        sw      $ra, ($sp)
	sw	$s0, 4($sp)
	sw	$a2, 8($sp)
	sw	$a3, 12($sp)
	
	jal	sum2		# int e = sum2(a, b);
	move	$s0, $v0

	lw	$a0, 8($sp)	# int f = sum2(c, d);
	lw	$a1, 12($sp)
	jal sum2

	move	$a0, $s0
	move	$a1, $v0

	jal sum2		# sum2(e, f);

	# prologue
	lw	$ra, 0($sp)
	lw	$s0, 4($sp)
	addiu	$sp, $sp, 16

	jr	$ra

sum2:
	# x in $a0
	# y in $a1
	addu	$v0, $a0, $a1
	jr	$ra


