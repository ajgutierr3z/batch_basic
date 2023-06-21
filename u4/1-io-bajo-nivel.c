#include <stdio.h>

int main() {
	FILE* file = fopen("input.txt", "r");

	if (file == NULL) {
		printf("No se pudo abrir el archivo.\n");
		return 1;
	}

	int caracter;

	while ((caracter = fgetc(file)) != EOF) {
		printf("%c", caracter);
	}

	fclose(file);
	return 0;
}
