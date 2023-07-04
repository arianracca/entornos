#!/bin/bash

archivo_comprimido="imagenes_procesadas.tar.gz"

# Obtener el ID del último contenedor en ejecución
id=$(docker ps | cut -d " " -f 1 | tail -n 1)

# Copiar el archivo comprimido desde el contenedor a la ubicación actual
docker cp $id:/home/"$archivo_comprimido" ./"$archivo_comprimido"
