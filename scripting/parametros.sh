# !/bin/bash

nombre=$1
apellido=$2
ubicacion=$(pwd)
echo "Hola mi nombre es: $nombre $apellido"
echo "La cantidad de parametros enviadas son $#"
echo "Los parametros enviados por el usuario son: $*"
echo $ubicacion


