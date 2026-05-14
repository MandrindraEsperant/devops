#!/bin/bash
if [ $# -ne 0 ]; 
then
    echo " le carré de $1 est : $(($1 * $1))"
else 
    echo "entrer un nombre"
    read number
    echo "le carré de $number est : $(($number * $number))"
fi
