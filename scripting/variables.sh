#!/bin/bash
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



