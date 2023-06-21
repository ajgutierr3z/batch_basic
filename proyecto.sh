#!/bin/bash

listar_archivos() {
	directorio="$1"
	echo "Archivo en $directorio:"
	ls -l "$directorio"
	echo ""
}

copiar_archivos() {
	directorio_origen="$1"
	directorio_destino="$2"
	echo "Copiando archivos de $directorio_origen a $directorio_destino..."
	cp "$directorio_origen"/* "$directorio_destino"
	echo "Copia creada"
}

mover_archivos() {
	directorio_origen="$1"
	directorio_destino="$2"
	echo "Moviendo archivos de $directorio_origen a $directorio_destino..."
	mv "$directorio_origen"/* "$directorio_destino"
	echo "Archivo creado"
}

eliminar_archivos() {
	objeto_a_eliminar="$1"
	echo "Eliminando $objeto_a_eliminar..."
	rm -rf "$objeto_a_eliminar"
	echo "Eliminado exitosamente"
}

echo "Ingrese el directorio a usar:"
read origen

if [ -d "$origen" ]; then
	listar_archivos "$origen"

	echo "Que accion desea realizar?"
	echo "1) Copiar archivos a otro directorio"
	echo "2) Mover archivos a otro directorio"
	echo "3) Eliminar archivos o directorios"
	read accion

	case $accion in
		1)
			echo "Ingrese el directorio destino:"
			read destino
			copiar_archivos "$origen" "$destino"
			;;
		2)
			echo "Ingrese el directorio de destino:"
			read destino
			mover_archivos "$origen" "$destino"
			;;
		3)
			echo "Ingrese el archivo o directorio a eliminar:"
			read objeto
			eliminar_archivos "$objeto"
			;;
		*) echo "Opcion no valida" ;;
	esac
else
	echo "No se encontro el directorio"
fi
