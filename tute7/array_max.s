max:
        # prologue
        addiu   $sp, $sp, -8
        sw      $ra, ($sp)
	sw	$s0, 4($sp)

        # body

	lw	$s0, ($a0)		# $s0: first_element = a[0];
	
	bne	$a1, 1, max__continue	# if (length == 1) {
	move	$v0, $s0		# return first_element;
	j  max__return

max__continue:
	addiu	$a0, $a0, 4		# calculate &a[1]
	addiu	$a1, $a1, -1		# length - 1
	jal	max
	move	$t0, $v0		# $t0: max_so_far = max(&a[1], length - 1);

	ble	$s0, $t0, max__skip
	move	$t0, $s0
max__skip:
	
	move	$v0, $t0

max__return:
        # epilogue
        lw      $ra, ($sp)
	lw	$s0, 4($sp)
        addiu   $sp, $sp, 8

        jr      $ra

main:
	# prologue
	addiu	$sp, $sp, -4
	sw	$ra, ($sp)
	
	# body

	# epilogue
	lw	$ra, ($sp)
	addiu	$sp, $sp, 4

	jr	$ra

.data

array:	.word	1 2 3 4 5 4 3 2 1 0
