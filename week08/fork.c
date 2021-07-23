#include <stdio.h>
#include <unistd.h>


int main (void)
{
    int x = 1;
    pid_t pid = fork ();
    if (pid < 0) {
   	perror( "fork failed");
    } else if (pid > 0) {
	printf("parent's id: %d\n", getpid());
        x++; printf ("x = %d\n", x);
    } else {
	printf("child's id: %d\n", getpid());
        x--; printf ("x = %d\n", x);
    }
}
