//Week 1, Q10 - looping through a list using different methods
//Written by Anna Brew for COMP1521
//Date: 4/06/21 (21T2)
#include <stdio.h>


void print_array(int i, int nums[10]) {
   if (i >= 10) {               //Exit Condition
       return;
   }
   printf("%d\n", nums[i]);     //Doing something (printing the number)
   print_array(i + 1, nums);    //Changing the state and calling itself
}

int main(void)
{
    int nums[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    //recursive function
    print_array(0, nums);
    
    //while loop
    int i = 0;                  //start
    while (i < 10) {            //stop
        printf("%d\n", nums[i]);
        i++;                    //continue (end of loop action)
    }
    
    //for loop
    for (int j = 0; j < 10; j++) {
        printf("%d\n", nums[j]);
    }
    return 0;
}

// The way I like to remember for loops is
// for (start; stop; continue) {}

