#!/bin/bash

cd personasimg

# Variables para contar personas
total_personas=0
total_femeninas=0
total_masculinas=0

archivo_personas="lista_personas.txt"

archivo_comprimido="imagenes_procesadas.tar.gz"

rm -f "$archivo_personas" "$archivo_comprimido"