//Week01 Q8 - pointers
//Written by Anna Brew for COMP1521
//Date: 4/06/21 (21T2)
#include <stdio.h>

int main(void) {
    int n[4] = { 42, 23, 11, 7 };
    int *p;

    p = &n[0];
    printf("%p\n", p); // prints 0x7fff00000000
    printf("%lu\n", sizeof (int)); // prints 4

    n[0]++;                         // increments the value at n[0], 42 -> 43
    printf("%d\n", *p);             // prints 0x7fff00000000
    p++;                            //increments the p pointer by the size of an integer
    printf("%p\n", p);              // prints 0x7fff00000004
    printf("%d\n", *p);             // prints 23 (n[1])

    return 0;
}
