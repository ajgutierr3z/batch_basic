#include <stdio.h>
#include <stdlib.h>

int main() {
	char c;
	int x = 0;

	while (1) {
		printf("%d", x);

		c = getchar();
		if (c == 'q') {
			break;
		}

		x++;
	}

	return 0;
}

