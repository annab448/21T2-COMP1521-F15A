#include <stdio.h>

int main (void) {
        int n;
        printf("n  = ");
        scanf("%d", &n);

        int fac = 1;
        int i = 1;
	loop:
        if (i > n) goto end;
                fac = fac * i;
                i ++;
		goto loop;

	end:
        printf ("n! = %d\n", fac);
        return 0;
}
