#!/bin/bash

cd tmp
for file in *.jpg; do
    nombre=${file%.jpg}  # Eliminamos la extensión .jpg del nombre del archivo
    palabras=($nombre)  # Dividimos el nombre en palabras
    
    es_nombre=false
    for palabra in "${palabras[@]}"; do
        primer_letra=${palabra:0:1}  # Obtenemos la primera letra de cada palabra
        
        if [[ ! $primer_letra =~ [A-Z] ]]; then
            es_nombre=true
            break
        fi
    done
    
    if $es_nombre; then
        convert $file -gravity center -resize 512x512+0+0 -extent 512x512 $file
    else
        echo "$nombre no es un nombre"
    fi
done
