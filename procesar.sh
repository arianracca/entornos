#!/bin/bash

cd tmp && echo "Funciona" && ls
for file in ./*.jpg; do
        nombre=${file^}
        if [ $nombre = $file ]; then #chequea si la primer letra comienza con m>
                echo "$nombre es un nombre"
        else
                echo "$nombre no es un nombre"
        fi
done
echo "hasta ahora funciona"
exit 0
