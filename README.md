# `Curso de Scripting Bash - shell`
<a id="item"></a>

## Índice de contenidos
* [Introducción ¿Qué es un script y para qué sirve?](#item1)
* [Curso de VIM](#item2)
* [Variables de entorno](#item3)
* [Crear script](#item4)
* [Bash - shell - Variables](#item5)

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
 

min 14:33