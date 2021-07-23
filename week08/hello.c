#include <stdio.h>
#include <unistd.h>


int main(void) {
	printf("hello.c: my pid is %d\n", getpid());
	printf("hello\n");
	return 0;
}
