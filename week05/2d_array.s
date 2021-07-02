	.data
matrix:
	.byte 1 2 3 4 5 6 7 8 9

	.text
main:

	li	$t0, 0		# int row = 0;

main__row_loop:
	bge	$t0, 3, main__row_end	# while (row < N_ROWS) {
	li	$t1, 0			# int col = 0;

main__col_loop:
	bge	$t1, 3, main__col_end	# while (col < N_COLS) {

#	la	$t2, matrix		# $t2 = start of matrix
	mul	$t3, $t0, 3		# $t3 = the row we're up to
	add	$t3, $t3, $t1		# $t3 = row + column we're up to
#	add 	$t4, $t3, $t2		# $t4 = address of matrix[row][column]

	lb	$a0, matrix($t3)		# printf("%d ", matrix[row][col]);
	li	$v0, 1
	syscall
	
	li	$a0, ' '
	li	$v0, 11
	syscall

	addiu	$t1, $t1, 1		# col ++;
	j main__col_loop		# }

main__col_end:

	li	$a0, '\n'
	li	$v0, 11
	syscall
	
	addiu	$t0, $t0, 1
	j main__row_loop

main__row_end:

	jr	$ra
