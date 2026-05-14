#!/bin/bash
echo "Continuer ? (o/n)"
read reponse
case $reponse in
    o|O) echo "Vous avez répondu oui, on continue"
        ;;
    n|N) echo "Vous avez répondu non, on arrête"
    exit 0
        ;;
    *) echo "Réponse invalide"
    exit 1
        ;;
esac
 echo "Vous êtes ici, le script continue"
 echo " taper deux mot ou plus :"
 read mot1 mot2 mot3
 echo "Vous avez tapé : $mot1, $mot2, $mot3"
 exit 0