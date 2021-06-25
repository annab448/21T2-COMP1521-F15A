// Simple factorial calculator  - without error checking

#include <stdio.h>

int main (void) {
	int n;
	printf("n  = ");
	scanf("%d", &n);

	int fac = 1;
	int i = 1;
	while (i <= n) {
		fac *= i;
		i ++;
	}

	printf ("n! = %d\n", fac);
	return 0;
}
