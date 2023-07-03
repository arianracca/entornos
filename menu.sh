#!/bin/bash

# Función para mostrar el menú y solicitar los argumentos
function mostrar_menu {
    clear
    echo "Menú de Scripts"
    echo "1. Generar imágenes"
    echo "2. Descargar archivo comprimido"
    echo "3. Procesar imágenes"
    echo "4. Comprimir imágenes"
    echo "5. Salir"
    echo

    read -p "Ingrese el número de la opción deseada: " opcion
    echo

    case $opcion in
        1)
            # Solicitar argumentos para el script "generar.sh"
            read -p "Ingrese la cantidad de imágenes a generar: " cantidad
            echo

            # Validar que la cantidad sea un número entero
            if ! [[ $cantidad =~ ^[0-9]+$ ]]; then
                echo "Error: La cantidad debe ser un número entero."
                echo "Presione Enter para volver al menú."
                read
                mostrar_menu
            fi

            # Ejecutar el script "generar.sh" con los argumentos proporcionados
            ./generar.sh "$cantidad"
            echo "Presione Enter para volver al menú."
            read
            mostrar_menu
            ;;

        2)
            # Ejecutar el script "descargar.sh" con los argumentos por defecto
            # Se optó por no permitir otras variantes debido a que no hay posibilidad
            # de que los scripts anteriores personalicen nombres en el proceso
            # al menos en esta primera versión.
            ./descargar.sh comprimido.tar sumaverif
            echo "Presione Enter para volver al menú."
            read
            mostrar_menu
            ;;

         3)
            # Ejecutar el script "procesar.sh"
            ./procesar.sh
            echo "Presione Enter para volver al menú."
            read
            mostrar_menu
            ;;

        4)
            # Ejecutar el script "comprimir.sh"
            ./comprimir.sh
            echo "Presione Enter para volver al menú."
            read
            mostrar_menu
            ;;

        5)
            # Salir del script
            echo "Saliendo del programa."
            exit 0
            ;;

        *)
            # Opción inválida
            echo "Opción inválida. Por favor, ingrese un número válido."
            echo "Presione Enter para volver al menú."
            read
            mostrar_menu
            ;;
    esac
}

# Mostrar el menú inicial
mostrar_menu