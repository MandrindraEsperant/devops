#!/bin/bash

# Répertoire à scanner
DIR="/var/log/"

# Répertoire de sauvegarde des archives
ARCHIVE_DIR="$DIR/archives"

# Crée le dossier d'archives si il n'existe pas
sudo mkdir -p "$ARCHIVE_DIR"

# Trouver tous les fichiers .log vieux de plus de 30 jours
sudo find "$DIR" -type f -name "*.log" -mtime +30 | while read file; do

    # Nom de l'archive basé sur le nom du fichier et la date
    filename=$(basename "$file")
    archive="$ARCHIVE_DIR/${filename%.log}_$(date +%Y%m%d).tar.gz"

    # Compresse le fichier
    tar -czf "$archive" -C "$(dirname "$file")" "$filename"

    # Supprime le fichier original après compression
    rm -f "$file"

    echo "Fichier $file compressé dans $archive"
done