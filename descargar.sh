#!/bin/bash

[ $# -eq 0 ] && exit 1 # No se recibieron argumentos
[ $# -gt 2 ] && exit 2 # Se recibió más de un argumento

archivo="$1"
sumaverif="$2"
key="$(sha256sum "$archivo" | cut -d " " -f 1)"
echo "$key"

if [ "$key" == "$sumaverif" ]; then
    tar -xvf "$archivo" && exit 0
else
    echo "No se pudo descomprimir" && exit 3
fi
