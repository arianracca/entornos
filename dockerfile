# Dockerfile

# Utilizar una imagen base de Lubuntu
FROM ubuntu:latest

# Actualizar los paquetes del sistema operativo e instalar las dependencias necesarias
RUN apt-get update && \
    apt-get install -y wget tar imagemagick

# Crear el directorio de trabajo
RUN mkdir /entornosapp

# Copiar los scripts al directorio /entornosapp dentro del contenedor
COPY README.md dict.txt generar.sh descargar.sh procesar.sh comprimir.sh menu.sh /entornosapp/

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /entornosapp

# Dar permisos de lectura, escritura y ejecución al propietario del archivo
RUN chmod u+rwx generar.sh descargar.sh procesar.sh comprimir.sh menu.sh

# Ejecutar el script de menú por defecto al iniciar el contenedor
CMD ["./menu.sh"]
