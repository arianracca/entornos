# Establece la imagen base de Docker que utilizarás
FROM ubuntu:latest

# Copia los scripts de bash al contenedor
COPY generar.sh /entornosapp/
COPY descargar.sh /entornosapp/
COPY procesar.sh /entornosapp/
COPY comprimir.sh /entornosapp/
COPY menu.sh /entornosapp/

# Establece el directorio de trabajo
WORKDIR /entornosapp

# Establece los permisos de ejecución para los scripts
RUN chmod +rxw generar.sh descargar.sh procesar.sh comprimir.sh menu.sh

# Define el comando por defecto a ejecutar cuando el contenedor se inicie
CMD ["./menu.sh"]