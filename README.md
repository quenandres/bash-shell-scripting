# `Curso de Scripting Bash - shell`
<a id="item"></a>

## Índice de contenidos
* [Introducción ¿Qué es un script y para qué sirve?](#item1)
* [Curso de VIM](#item2)
* [Variables de entorno](#item3)
* [Crear script](#item4)
* [Bash - shell - Variables](#item5)
* [Bash - shell - Parametros](#item6)
* [Bash - shell - Scripts dinámicos](#item7)
* [Bash - shell - Condicionales](#item8)

<a id="item1"></a>

## `Introducción ¿Qué es un script y para qué sirve?`
[Inicio](#item)

#### Script
- Secuencia de comandos
- Un programa relativamente simple
- Generalmente no se compilan
- Son identificados por el sistema a través de encabezados
```bash
#!/bin/bash
```

#### Terminal
- Se llama prompt al carácter o conjunto de caracteres que se muestran en una línea de comandos para indicar que está a la espera de órdenes.
- Interfaz gráfica que simula una linea de comandos (VEntana que nos muestra el promt)
- La terminal ALOJA a la shell.

#### Shell
- Un programa que toma comandos los pasa al sistema operativo para procesarlos. (Interporeta los comandos y le dice al Sistema operativo que hacer).
- Bourne Shell, Bash Shell, C Shell, Power shell.

<a id="item2"></a>

## `Curso de VIM?`
[Inicio](#item)

> j -> bajar

> k -> subir

> l -> derecha

> h -> izquierda

> 0 -> inicio de la linea

> $ -> final de la linea

> w -> inicio de la siguiente palabra

> b -> inicio de la anterior palabra

> e -> al final de la palabra

> '*' -> Busca palabras iguales a la que se esta seleccionando

> set number | set nu -> Nos muestra los numeros de las lineas 

> o -> Crea una nueva linea hacia abajo

> O -> Crea una nueva linea hacia arriba

> x -> Elimina caracter 

> r -> Reemplaza caracter

> p -> Pega lo que se tenga copiado

> n -> Se mueve a la siguiente palabra encontrada

#### *Combinaciones*

> 8 + j #Se mueve 8 espacios hacia abajo

> 10 + G # Nos traslada a la linea 10 del documento (Linea especifica)

> d + w #Elimina palabra

> d + d #Elimina linea / Pero realmente lo que hace es cortar

> y + y #Copia la linea

> :/palabra #Buscar la palabra

<a id="item3"></a>

## `Variables de entorno`
[Inicio](#item)

Imprimir variables de entorno
```bash
printenv
```

Imprimir variables de entorno en especificio
```bash
echo $HOME
```
Inicializar variable
```bash
export MIVARIABLE=$PATH
```

<a id="item4"></a>

## `Crear un script en bash`
[Inicio](#item)

_mi_primer_script.sh_

```sh
# !/bin/bash
# Author: Quenandres
# Primer script shell

pwd # Muestra el directorio actual
cd $HOME
echo "Dirigiendo a HOME"
pwd # Muestra el directorio actual
```

<a id="item5"></a>

## `Bash - shell - VARIABLES`
[Inicio](#item)
 
 ```bash
 # !/bin/bash
# Author: Jhonatan Mejia
# Enseñanza de variables en script


jhonatan="hola mi nombre es jhonatan estoy dentro del script"
numA=15
numB=5
echo $JHONATAN #Variable de entorno
echo $jhonatan #Variable de usuario

echo "operadores aritmeticos $numA y $numB"
echo "$numA + $numB = " $((numA + numB))

echo "$numA - $numB = " $((numA - numB))

echo "$numA * $numB = " $((numA * numB))

echo "$numA / $numB = " $((numA / numB))

echo "operadores relacionales  $numA y $numB"
echo "$numA > $numB = " $((numA > numB))

echo "$numA < $numB = " $((numA < numB))

echo "$numA >= $numB = " $((numA >= numB))

echo "$numA <= $numB = " $((numA <= numB))

echo "$numA == $numB = " $((numA == numB))

echo "$numA != $numB = " $((numA != numB))

echo "Operadores de asignación entre $numA y $numB"
echo "$numA += $numB = " $((numA += numB))

echo "$numA -= $numB = " $((numA -= numB))

echo "$numA *= $numB = " $((numA *= numB))

echo "$numA /= $numB = " $((numA /= numB))
 ```

<a id="item6"></a>

## `Bash - shell - Parametros`
[Inicio](#item)

```bash
# !/bin/bash
nombre=$1
apellido=$2
ubicacion=$(pwd)
echo "Hola mi nombre es: $nombre $apellido"
echo "La cantidad de parametros enviadas son $#"
echo "Los parametros enviados por el usuario son: $*"
echo $ubicacion
```

```bash
./parametros.sh Jhonatan Mejia
./parametros.sh "Jhonatan" "Mejia"
# Hola mi nombre es: jhonatan mejia
# La cantidad de parametros enviadas son 2
# Los parametros enviados por el usuario son: jhonatan mejia
# /mnt/d/proyectos/personal/youtube/dfbastidas/bash-shell-scripting/scripting
```

<a id="item7"></a>

## `Bash - shell - Scripts Dinámicos`
[Inicio](#item)

```bash
#!/bin/bash

name=""
age=0

read -p "Ingresa tu nombre: " name
read -p "Ingresa tu edad: " age

echo "Hola mi nombre es $name, tengo $age"

# Ingresa tu nombre: jhonatan
# Ingresa tu edad: 29
# Hola mi nombre es jhonatan, tengo 29
```

<a id="item8"></a>

## `Bash - shell - Condicionales`
[Inicio](#item)

|Nombre|Descripcion|
|--|--|
|-eq|Is equal to|
|-ne|Is not equal to|
|-gt|Is greater than|
|-ge|Is greater than or equal to|
|-lt|Is less than|
|-le|Is less than or equal to|

```bash
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
```