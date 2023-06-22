#!/bin/bash

[ $# -eq 0 ] && exit 1 #no se recibieron argumentos
[ $# -gt 2 ] && exit 2 #se recibio mas de un argumento

cantidad=$1
tipo=$2

url=https://source.unsplash.com/random/900%C3%97700/?$tipo
mkdir ./tmp

for ((i=0; i<cantidad; i++)); do
    contador=$(($i+1))
    nombre_archivo="imagen_$contador.jpg"
    wget -O "$nombre_archivo" "$url"
    mv "$nombre_archivo" ./tmp/
    echo "se creo $nombre_archivo correctamente"
    sleep 1
done

tar -cvf comprimido.tar tmp

rm -rf ./tmp

exit 0



