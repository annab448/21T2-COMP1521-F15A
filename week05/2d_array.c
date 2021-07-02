#include <stdio.h>
#include <stdint.h>
#define N_ROWS 3
#define N_COLS 3

int main(void) {
	uint8_t matrix[N_ROWS][N_COLS] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9},
	};

	int row = 0;
	while (row < N_ROWS) {
		int col = 0;
		while (col < N_COLS) {
			printf("%d ", matrix[row][col]);
			col ++;
		}
		printf("\n");
		row ++;
	}

	return 0;
}
