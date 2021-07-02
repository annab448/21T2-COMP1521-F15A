#include <stdio.h>

int square_num(int x) {
	int s = x * x;
	return s; 
}


int main(void) {
	int num1;
	int num2;
	scanf("%d", &num1);
	scanf("%d", &num2);

	num1 = square_num(num1);
	num2 = square_num(num2);
	
	
	printf("%d\n", num1 + num2);
}
