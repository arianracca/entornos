#!/bin/bash

cd tmp
for file in *.jpg; do
    nombre=${file%.jpg}  # Eliminamos la extensión .jpg del nombre del archivo
    primer_letra=${nombre:0:1}  # Obtenemos la primera letra del nombre
    
    if [[ $primer_letra =~ [A-Z] ]]; then
        convert $file -gravity center -resize 512x512+0+0 \ -extent 512x512 $file
    else
        echo "$nombre no es un nombre"
    fi
done
