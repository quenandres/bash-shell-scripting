#!/bin/bash

option=""

read -p "Ingresa una opcion: [A-B]" option

if [ "$option" == "A" ]; then
    echo "Elegiste la opcion A"
elif [ "$option" == "B" ]; then
    echo "Elegiste la opcion B"
else
    echo "Opcion no valida"    
fi


case $option in
    "A") echo "Ingreso con la opción A";;
    "B") echo "Ingreso con la opcion B";;
    [C-Z] ) echo "Ingreso con un valor fuera de rango";;
    *) echo "Opcion no valida";;
esac