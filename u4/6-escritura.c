#include <stdio.h>

int main() {
	FILE* file = fopen("output.txt", "w");

	if (file == NULL) {
		printf("No se pudo crear el archivo.\n");
		return 1;
	}

	fprintf(file, "Hola, mundo!\n");
	fclose(file);
	
	printf("Archivo creado correctamente.\n");
	return 0;
}

