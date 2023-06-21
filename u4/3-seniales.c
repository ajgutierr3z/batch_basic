#include <stdio.h>
#include <stdlib.h>
#include <signal.h>

void manejarSenial(int senial) {
	printf("Senial capturada: %d\n", senial);
	exit(0);
}

int main() {
	printf("Capturando seniales... (termine con ctrl + c)\n");
	fflush(stdout);
	signal(SIGINT, manejarSenial);
	while(1){}

	return 0;
}

