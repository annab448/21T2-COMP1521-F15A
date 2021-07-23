#include <stdio.h>
#include <unistd.h>


int main (void) {
	fork();
	fork();
	printf("Hello, world!\n");
	return 0;
}
