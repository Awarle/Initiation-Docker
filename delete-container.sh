#!/bin/bash

# Vérifier si au moins un argument a été passé
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 CONTAINER_ID [CONTAINER_IDS...]"
    echo "Ou pour supprimer tous les conteneurs : $0 [-a|--all]"
    exit 1
fi

# Option pour supprimer tous les conteneurs
if [[ "$1" == "-a" ]] || [[ "$1" == "--all" ]]; then
    echo "Suppression de tous les conteneurs..."
    docker rm $(docker ps -aq)
    exit 0
fi

# Si des IDs de conteneurs sont fournis, on les supprime
echo "Suppression des conteneurs avec les IDs suivants : $@"
docker rm "$@"

# Vérifier si la commande docker rm a réussi
if [ $? -eq 0 ]; then
    echo "Les conteneurs ont été supprimés avec succès."
else
    echo "Erreur lors de la suppression des conteneurs."
    exit 1
fi
