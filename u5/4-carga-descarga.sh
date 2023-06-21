#!/bin/bash

# Primero hay que compilar el modulo con el siguiente comando
# o con el archivo makefile en este directorio

# make -C /lib/modules/$(uname -r)/build M=$(pwd) modules

insmod modulo.ko
dmesg			# verificar mensaje al cargar
rmmod modulo.ko
dmesg			# verificar mensaje al descargar
