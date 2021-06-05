//Week 1 Q16 - Strings/Character Arrays
//Written by Anna Brew for COMP1521
//Date: 4/06/21 (21T2)

#include <stdio.h>

int main(void) {
    char str[10];
    str[0] = 'H';
    str[1] = 'i';
    // When manually filling in the letters of a string - you have
    // to add a null character at the end (\0)
    str[2] = '\0';
    printf("%s", str);
    return 0;
}

//The null character is added manually here:
//char *str = "Hi";
