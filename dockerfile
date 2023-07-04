# Dockerfile

# Utilizar una imagen base de Lubuntu
FROM lubuntu:latest

# Actualizar los paquetes del sistema operativo e instalar las dependencias necesarias
RUN apt-get update && \
    apt-get install -y wget tar imagemagick

# Crear el directorio de trabajo dentro del contenedor
RUN mkdir -p /home/entornosapp

# Copiar los scripts desde el origen al directorio /entornosapp dentro del contenedor
COPY . /home/entornosapp

# Exponer el puerto de ejecución
EXPOSE 3030

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /home/entornosapp

# Dar permisos de lectura, escritura y ejecución a los scripts
RUN chmod +rwx generar.sh descargar.sh procesar.sh comprimir.sh menu.sh

# Ejecutar el script de menú por defecto al iniciar el contenedor
CMD ["./menu.sh"]
