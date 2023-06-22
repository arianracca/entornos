#!/bin/bash

[ $# -eq 0 ] && exit 1 #no se recibieron argumentos
[ $# -gt 2 ] && exit 2 #se recibio mas de un argumento

cantidad=$1
tipo=$2a
directorio=/tmp


url=https://source.unsplash.com/random/900%C3%97700/?$tipo

for ((i=0; i<cantidad; i++)); do
    nombre_archivo="imagen_$contador.jpg"
    wget -P "$directorio" -O "$nombre_archivo" "$url"
    contador=$((contador+1))
done
