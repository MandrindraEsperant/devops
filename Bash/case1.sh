#!/bin/bash
if [ $# -ne 0 ]
then
    if [ $# -eq 1 ]
    then
        echo " $# paremètre passés au ligne de commande"
    else
        echo " $# paremètres passés au ligne de commande"
    fi
    
else
    echo "Il n'y a pas de paramètres passés au script"
    set oscar remeo zoulou 
    exit 1
fi

case $1 in
    a*)
        echo "Le premier paramètre commence par a"
        ;;
    b*)
        echo "Le premier paramètre commence par b"
        ;;
    fic[123]) echo "Le premier paramètre est fic1, fic2 ou fic3"
        ;;
    *)
        echo "Le premier paramètre ne commence pas par a ou b et n'est pas fic1, fic2 ou fic3"
        ;;
esac