#!/bin/bash

archivo_comprimido="imagenes_procesadas.tar.gz"
id=$(docker ps | cut -d " " -f 1 | tail -n 1)
docker cp $id:/home/"$archivo_comprimido" ./"$archivo_comprimido"
