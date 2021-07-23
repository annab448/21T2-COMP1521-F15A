#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <spawn.h>

int main(void) {
	char *argv[1] = {NULL};
	extern char **environ;

	pid_t pid;
	
	int err = posix_spawn(&pid, "./hello", NULL, NULL, argv, environ);
	if (err) {
		perror("posix_spawn");
		exit(1);
	}

	int exit_status;
	if (waitpid(pid, &exit_status, 0) == -1) {
		perror("waitpid");
		exit(EXIT_FAILURE);
	}

	printf("posix_spawn finished with return val %d\n", exit_status);

	return 0;
}
