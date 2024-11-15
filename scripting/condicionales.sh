#!/bin/bash

name=""
age=0

read -p "Ingresa tu nombre: " name
read -p "Ingresa tu edad: " age

echo "Hola mi nombre es $name, tengo $age"


if (( $age >= 18 )); then
    echo "Eres mayor de edad"
fi

if [ $age -ge 18 ]; then
    echo "Eres mayor de edad"
else
    echo "Eres menor de edad"
fi