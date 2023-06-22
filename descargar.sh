#!/bin/bash

[ $# -eq 0 ] && exit 1 #no se recibieron argumentos
[ $# -gt 2 ] && exit 2 #se recibio mas de un argumento

archivo=$1
sumaverif=$2
key=$((sha256sum $archivo | cut -d " " -f 1))
echo $key

if [ key == $((cat sumaverif)) ]; then
	tar -xv $archivo && exit 0
else
	echo "No se pudo descomprimir" && exit 3
done
