// print a triangle
#include <stdio.h>

int main (void) {
	int i = 1;
	while ( i <= 10) {
		int j = 0;
		while (j < i) {
			printf("*");
			j ++;
		}
		printf("\n");
		i ++;
	};
	return 0;
}
