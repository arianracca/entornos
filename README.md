# EntornosApp

Trabajo grupal para Entornos de Programacion de la TUIA en la UNR

## Integrantes

- Arian Racca
- Amanda Tardugno

## Aplicación de Procesamiento de Imágenes

Esta aplicación de procesamiento de imágenes está diseñada para realizar diferentes tareas en imágenes, como descargar, procesar, comprimir y administrar la lista de personas presentes en las imágenes.

## Ejecución con Docker

- Asegúrate de tener instalado Docker en tu sistema.

- Clona o descarga este repositorio en tu máquina local.

- Abre una terminal y navega hasta el directorio raíz de la aplicación.

- Ejecuta el siguiente comando para construir la imagen Docker:

***sudo docker build -t entornosapp***

- Una vez que se haya construido la imagen, ejecuta un contenedor utilizando el siguiente comando:

***sudo docker run --rm -it entornosapp***

- Esto ejecutará la aplicación dentro del contenedor Docker.

- Se abrirá directamente el ***Menú***, dando acceso a las opciones.

- Antes de cerrar el programa (opcion 5), se debe ejecutar en el mismo directorio el script ***docker.sh*** para copiar el resultado del contenedor al host.

## Scripts

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

Este script cuenta las personas en las imágenes procesadas y genera un archivo con la lista de todas las personas, así como el total de personas femeninas y masculinas. Luego, comprime las imágenes en un archivo tar.gz

---------------

### docker.sh

---------------

El script docker.sh se utiliza para obtener el archivo comprimido generado por la aplicación desde el contenedor Docker. Sigue estos pasos para obtener el archivo:

- Ejecuta el script docker.sh proporcionado en la raíz del proyecto.
- El script identificará el último contenedor en ejecución y copiará el archivo comprimido desde el directorio /home del contenedor al directorio actual en tu máquina host.
- Una vez finalizada la ejecución, encontrarás el archivo imagenes_procesadas.tar.gz en la ubicación actual.

Ten en cuenta que es necesario que haya al menos un contenedor en ejecución que haya generado el archivo comprimido. Si hay múltiples contenedores en ejecución, el script tomará el último contenedor iniciado como referencia.

Utiliza este script cuando desees obtener el archivo comprimido generado por la aplicación desde el entorno Docker para su uso o análisis fuera del contenedor
