#!/bin/bash

# Vérifier si au moins un argument a été passé
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 IMAGE_NAME [IMAGE_NAMES...]"
    echo "Ou pour supprimer toutes les images : $0 [-a|--all]"
    exit 1
fi

# Option pour supprimer toutes les images
if [[ "$1" == "-a" ]] || [[ "$1" == "--all" ]]; then
    echo "Suppression de toutes les images Docker..."
    docker rmi $(docker images -q)
    exit 0
fi

# Si un nom d'image ou une expression régulière est fourni, on les supprime
echo "Suppression des images correspondant aux noms : $@"
docker rmi $(docker images -q "$@")

# Vérifier si la commande docker rmi a réussi
if [ $? -eq 0 ]; then
    echo "Les images ont été supprimées avec succès."
else
    echo "Erreur lors de la suppression des images."
    exit 1
fi
