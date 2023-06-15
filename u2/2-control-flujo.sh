#!/bin/bash
echo "Ingresa un numero:"
read numero
if [ $numero -gt 10 ]; then
  echo "El numero es mayor que 10"
else
  echo "El numero es menor o igual a 10"
fi
