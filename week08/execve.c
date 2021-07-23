#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main (void) {

	char *argv[1] = {NULL};
	char *envp[1] = {NULL};

	printf("execve.c: my pid is %d\n", getpid());
	pid_t pid = fork ();

	if (pid == 0) {
		int return_val = execve(
				"./hello",
				argv,
				envp);
	}
	int exit_status;

	if (waitpid(pid, &exit_status, 0) < 0) {
		perror("waitpid");
		exit (EXIT_FAILURE);
	}

		printf("parent finished\n");
	return 0;
}
