#include <stdio.h>
#include <string.h>

#define TAMANIO_LINEA 50
#define LIM_LINEAS 10

int main() {
	FILE* file = fopen("data.txt", "r");
	char linea[TAMANIO_LINEA];
	char lineas[LIM_LINEAS][TAMANIO_LINEA];
	int contadorLineas = 0;

	if (file == NULL) {
		printf("No se pudo abrir el archivo.\n");
		return 1;
	}

	while (fgets(linea, sizeof(linea), file) != NULL) {
		strcpy(lineas[contadorLineas], linea);
		contadorLineas++;
	}

	fclose(file);

	for (int i = 1; i <= contadorLineas; i++) {
		printf("Linea %d: %s", i, lineas[i - 1]);
	}

	return 0;
}

