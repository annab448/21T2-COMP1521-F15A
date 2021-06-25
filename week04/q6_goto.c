// print a triangle
#include <stdio.h>

int main (void) {
        int i = 1;
	
	outer_loop:
        if ( i > 10 ) goto outer_end;
                int j = 0;

		inner_loop:
                if (j >= i) goto inner_end;
                        printf("*");
                        j ++;
			goto inner_loop;
		inner_end:
                printf("\n");
                i ++;
        goto outer_loop;
	
	outer_end:
        return 0;
}
