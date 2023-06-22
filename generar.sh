#!/bin/bash

[ $# -eq 0 ] && exit 1 #no se recibieron argumentos
[ $# -gt 1 ] && exit 2 #se recibio mas de un argumento

cantidad=$1