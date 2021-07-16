# a) int v0;
	.align 2
v0:	.space 4

# b) int v1 = 42;
v1:	.word 42

# c) char v2;
v2:	.space 1

# d) char v3 = 'a';
v3:	.byte 'a'

# e) double v4;
	.align 3
v4:	.space 8

# f) int v5[20];
	.align 2
v5:	.space 80

# g) int v6[10][5];
	.align	2
v6:	.space 200

# h) struct { int x; int y; } v7;

v7:	.space	8

# i) struct { int x; int y; } v8[4];

v8:	.space	32

# j) struct { int x; int y; } *v9[4];
v9:	.space	16
