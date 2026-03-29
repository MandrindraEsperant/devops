#!/bin/bash
if [ $# -ne 0 ]
then
    echo "Il y a des paramètres passés au script"
else
    echo "Il n'y a pas de paramètres passés au script"
    set oscar remeo zoulou
fi

echo "Nombre de paramètres : $#"
echo "Paramètres : $*"
echo "Paramètres :1= $1, 2= $2, 3= $3, 4= $4, 5= $5"