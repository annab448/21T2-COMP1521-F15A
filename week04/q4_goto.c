#include <stdio.h>

int main(void) {
        int x;
        printf("Enter a number: ");
        scanf("%d", &x);

	if (x <= 100) goto big_small;
	if (x >= 1000) goto big_small;
                printf("medium\n");
		goto end;

	big_small:
                printf("small/big\n");

	end:
	return 0;
}
