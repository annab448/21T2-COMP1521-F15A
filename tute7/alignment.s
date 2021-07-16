

.data
	.space 1
	.align 2
foo:	.space 4

	.text
main:
	li	$t0, 42
	sw	$t0, foo
	jr	$ra
