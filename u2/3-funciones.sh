#!bin/bash
sumar() {
  local a=$1
  local b=$2
  local resultado=$((a + b))
  echo $resultado
}

resultado=$(sumar 5 3)
echo "La suma da: $resultado"

