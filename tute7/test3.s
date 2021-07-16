


max:
	# prologue
	addiu	$sp, $sp, -8
	sw	$ra, 0($sp)
	sw	$s0, 4($sp)
	
	lw	$s0, ($a0)		# $s0: int first_element = a[0];
	
	bne	$a1, 1, max_continue	# if (length == 1) {
	move	$v0, $s0		#	return first_element;
	j max_return
	
max_continue:
	addiu	$a1, $a1, -1		# calculate &a[1]
	addiu	$a0, $a0, 4		# calculate length -1
	jal	max			# max(&a[1], length - 1)	
	move	$t0, $v0		# $t0: max_so_far = max(&a[1], length - 1);
	
	ble	$s0, $t0, max_continue2	# if (first_element > max_so_far) {
	move	$t0, $s0
max_continue2:
	move	$v0, $t0
max_return:
	# epilogue
	lw	$s0, 4($sp)
	lw	$ra, 0($sp)
	addiu	$sp, $sp, 8
	
	jr	$ra

main:
        # prologue
        addiu   $sp, $sp, -4
        sw      $ra, ($sp)

	la	$a0, array
	li	$a1, 10
	jal	max

	move	$a0, $v0
	li	$v0, 1
	syscall

	li	$a0, '\n'
	li	$v0, 11
	syscall

        # epilogue
        lw      $ra, ($sp)
        addiu   $sp, $sp, 4

	li	$v0, 0
	jr	$ra

	.data
array:
	.word	1 2 3 4 5 4 3 2 1 0
