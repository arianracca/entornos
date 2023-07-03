# EntornosApp

Trabajo grupal para entornos de programacion de la TUIA en la UNR

## Participantes

- Arian Racca
- Amanda Tardugno

######################################

## Aplicación de Procesamiento de Imágenes

######################################

Esta aplicación de procesamiento de imágenes está diseñada para realizar diferentes tareas en imágenes, como descargar, procesar, comprimir y administrar la lista de personas presentes en las imágenes.

######################################

## Ejecución con Docker

######################################

- Asegúrate de tener instalado Docker en tu sistema.

- Clona o descarga este repositorio en tu máquina local.

- Abre una terminal y navega hasta el directorio raíz de la aplicación.

- Ejecuta el siguiente comando para construir la imagen Docker:

sudo docker build -t entornosapp .

- Una vez que se haya construido la imagen, ejecuta un contenedor utilizando el siguiente comando:

sudo docker run --rm -it entornosapp

- Esto ejecutará la aplicación dentro del contenedor Docker.

######################################

## Scripts

######################################

---------------

### menu.sh

---------------

Este script es un menú de acceso para ejecutar los diferentes scripts.
Proporciona opciones para ejecutar cada script de forma interactiva.

---------------

### generar.sh

---------------

Este script descarga imágenes de personas de forma aleatoria desde Unsplash.
Requiere un argumento que indica la cantidad de imágenes a descargar.

---------------

### descargar.sh

---------------

Este script descomprime un archivo tar y verifica su integridad utilizando un archivo de suma de verificación.
Requiere dos argumentos: el archivo comprimido y el archivo de suma de verificación.

---------------

### procesar.sh

---------------

Este script procesa las imágenes en la carpeta tmp, recortándolas a una resolución de 512x512 píxeles.
Solo procesa las imágenes cuyos nombres empiezan con mayúsculas.

---------------

### comprimir.sh

---------------

Este script cuenta las personas en las imágenes procesadas y genera un archivo con la lista de todas las personas, así como el total de personas femeninas y masculinas. Luego, comprime las imágenes en un archivo tar.gz un nivel por encima de la carpeta de entornosapp
