#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
	char *home_path = getenv("HOME");
	char *diary_name = ".diary";

	int path_len = strlen(home_path) + strlen(diary_name) + 2;
	char diary_path[path_len];

	snprintf(diary_path, sizeof(diary_path), "%s/%s", home_path, diary_name);

	printf("%s\n", diary_path);

	FILE *diary = fopen(diary_path, "r");

	int byte;
	while ((byte = fgetc(diary)) != EOF) {
		fputc(byte, stdout);
	}
	fclose(diary);
	return 0;

}
