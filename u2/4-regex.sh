#!/bin/bash
archivo="archivo.txt"
contador=$(grep -o -i "hola" $archivo | wc -l)
echo "La palabra 'hola' aparece $contador veces en el archivo"
