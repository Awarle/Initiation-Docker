#!/bin/bash

# Vérifier si au moins un argument a été passé
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 CONTAINER_ID [CONTAINER_IDS...]"
    echo "Ou pour arrêter tous les conteneurs : $0 [-a|--all]"
    exit 1
fi

# Option pour arrêter tous les conteneurs
if [[ "$1" == "-a" ]] || [[ "$1" == "--all" ]]; then
    echo "Arrêt de tous les conteneurs..."
    docker stop $(docker ps -q)
    exit 0
fi

# Si des IDs de conteneurs sont fournis, on les arrête
echo "Arrêt des conteneurs avec les IDs suivants : $@"
docker stop "$@"

# Vérifier si la commande docker stop a réussi
if [ $? -eq 0 ]; then
    echo "Les conteneurs ont été arrêtés avec succès."
else
    echo "Erreur lors de l'arrêt des conteneurs."
    exit 1
fi
