#!/bin/bash

# Vérifier si le bon nombre d'arguments est passé
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 IMAGE_NAME HOST_PORT CONTAINER_PORT"
    exit 1
fi

# Variables d'entrée
IMAGE_NAME=$1
HOST_PORT=$2
CONTAINER_PORT=$3

# Vérifier si Docker est installé
if ! command -v docker &> /dev/null; then
    echo "Docker n'est pas installé. Veuillez installer Docker pour continuer."
    exit 1
fi

# Construire l'image Docker à partir du Dockerfile
echo "Construction de l'image Docker: $IMAGE_NAME"
docker build -t $IMAGE_NAME .

# Vérifier si la construction de l'image a réussi
if [ $? -ne 0 ]; then
    echo "Échec de la construction de l'image Docker."
    exit 1
fi

# Lancer le conteneur Docker en arrière-plan
echo "Lancement du conteneur en arrière-plan..."
docker run -d -p $HOST_PORT:$CONTAINER_PORT --name $IMAGE_NAME-container $IMAGE_NAME

# Vérifier si le conteneur a bien démarré
if [ $? -eq 0 ]; then
    echo "Conteneur lancé avec succès. Accédez à l'application via http://localhost:$HOST_PORT"
else
    echo "Échec du lancement du conteneur."
    exit 1
fi
