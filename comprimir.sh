#!/bin/bash

cd personasimg

# Variables para contar personas
total_personas=0
total_femeninas=0
total_masculinas=0

archivo_personas="lista_personas.txt"

archivo_comprimido="imagenes_procesadas.tar.gz"

rm -f "$archivo_personas" "$archivo_comprimido"

for file in *.jpg; do
    nombre=${file%.jpg}  # Eliminamos la extensión .jpg del nombre del archivo

    # Obtener el primer nombre y la última letra
    primer_nombre=${nombre%% *}  # Obtener el primer nombre
    ultima_letra=${primer_nombre: -1}  # Obtener la última letra del primer nombre

    # Verificar si es una persona femenina
    if [[ $ultima_letra == "a" ]]; then
        echo "$nombre" >> "$archivo_personas"
        ((total_personas++))
        ((total_femeninas++))
    else
        ((total_personas++))
        ((total_masculinas++))
    fi
done

echo "Total de personas: $total_personas" >> "$archivo_personas"
echo "Total de personas femeninas: $total_femeninas" >> "$archivo_personas"
echo "Total de personas masculinas: $total_masculinas" >> "$archivo_personas"

cd ..

tar -czvf "$archivo_comprimido" personasimg

rm -rf personasimg
