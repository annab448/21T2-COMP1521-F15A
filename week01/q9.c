//week01 q9 - pointers
//Written by Anna Brew for COMP1521
//Date: 4/06/21 (21T2)

int  x;  // a variable located at address 1000 with initial value 0
int *p;  // a variable located at address 2000 with initial value 0

p = &x;         // x = 0, p = 1000
x = 5;          // x = 5, p = 1000
*p = 3;         // x = 3, p = 1000
x = (int)p;     // x = 1000, p = 1000;
x = (int)&p;    // x = 2000, p = 1000
p = NULL;       // x = 2000, p = NULL;
*p = 1;         // error - cannot access NULL memory
