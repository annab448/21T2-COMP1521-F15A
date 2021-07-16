main:
	li	$t0, 0		# $t0 = row = 0
loop1:
	bge	$t0, 6, end1	# for (int row = 0; row < 6; row++) {
	li	$t1, 0		# $t1 = col = 0
loop2:
	bge	$t1, 12, end2
	
	mul	$t2, $t0, 12	# $t2 = 12 * row
	addu	$t2, $t2, $t1	# $t2 = (12 * row) + col
	lb	$a0, flag($t2)

	li	$v0, 11
	syscall
	
	addiu	$t1, $t1, 1
	j	loop2
	

end2:
	li	$a0, '\n'	# printf ("\n");
	li	$v0, 11
	syscall

	addiu	$t0, $t0, 1	# row += 1
	j loop1

end1:

	jr	$ra


.data
flag:
    .byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
    .byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
    .byte '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.'
    .byte '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.'
    .byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
    .byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
