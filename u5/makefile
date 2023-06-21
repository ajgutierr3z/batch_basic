MODULE = mi_modulo
SOURCE = 2-modulo.c 	# cambiar por el modulo que se quiera compilar
CC = gcc
CFLAGS = -Wall

all: $(MODULE)

$(MODULE): $(SOURCE)
	$(CC) $(CFLAGS) -o $(MODULE) $(SOURCE)

clean:
	rm -r $(MODULE)
