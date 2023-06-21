#!/bin/bash

version=$(uname -r)
echo "Version del kernel: $version"

if ! command -v kmod &> /dev/null; then
	echo "El paquete kmod se necesita para mostrar los modulos cargados pero no esta instalado. Instalando..."

	if [ "$UID" -eq 0 ]; then           # usuario root activado
		apt-get update
		apt-get install kmod
	else
		sudo apt-get update
		sudo apt-get install kmod
	fi
fi

modulos=$(lsmod)
echo -e "Modulos cargados:"
cat /proc/modules
