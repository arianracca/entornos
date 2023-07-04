# Utilizar una imagen base de Lubuntu
FROM ubuntu:latest

# Actualizar los paquetes del sistema operativo e instalar las dependencias necesarias
RUN apt-get update && \
    apt-get install -y wget tar imagemagick

# Crear el directorio de trabajo dentro del contenedor
RUN mkdir -p /home/entornosapp

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /home/entornosapp

# Copiar los scripts desde el origen al directorio /home/entornosapp dentro del contenedor
COPY . .

# Dar permisos de lectura, escritura y ejecución
RUN chmod +rwx generar.sh descargar.sh procesar.sh comprimir.sh menu.sh

# Ejecutar el script de menú por defecto al iniciar el contenedor
CMD ["./menu.sh"]