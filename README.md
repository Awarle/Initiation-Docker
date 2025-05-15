# STAGEOO
# Objectifs :
Installer et configurer Docker
Créer et lancer des conteneurs via des lignes de commande

# Attention :
Sur Linux, ou d'autres systèmes basés sur UNIX, des problèmes liés aux droits de Docker peuvent être rencontrés. Voici les plus fréquents :

Problème de droits : Lien vers la documentation
Problème de service non activé : sudo systemctl enable docker
Problème de service non démarré : sudo systemctl start docker
Consignes
Vous devez créer un script bash qui créera et lancera un conteneur Docker en arrière-plan à partir du Dockerfile.

Le nom de l'image, le port de la machine hôte et le port du conteneur seront configurables via des paramètres d'entrée.

# Ressources :
Vous trouverez un Dockerfile, app.py et requirements.txt dans les ressources liées au projet.

Le Dockerfile contient les instructions pour la construction de l'image.

Les fichiers app.py et requirements.txt sont nécessaires pour faire tourner votre application dans le conteneur.

Vous ne devrez pas les rendre.

# En pratique :
Vous devriez lancer votre programme ainsi:

./create-and-run-container.sh IMAGE_NAME HOST_PORT CONTAINER_PORT

# STAGE01
# Objectifs:
Arrêter les conteneurs lancés en utilisant des lignes de commande

# Consignes :
Vous devez créer un script bash qui arrêtera un ou plusieurs conteneurs Docker. Les IDs des conteneurs seront passés via des paramètres d'entrée.

En pratique
Vous devriez lancer votre script ainsi :

./stop-container.sh CONTAINER_ID [CONTAINER_IDS...]
Bonus
Ajouter une option de lancement -a / --all qui supprime tout les conteneurs:

./stop-container.sh [-a|--all]

# STAGE02
# Objectifs :
Supprimer les conteneurs créés en utilisant des lignes de commande

# Consignes :
Vous devez créer un script bash qui supprimera un ou plusieurs conteneurs Docker.

Les ID des conteneurs seront passés via des paramètres d'entrée.

# En pratique :
Vous devriez lancer votre programme ainsi :

./delete-container.sh CONTAINER_ID [CONTAINER_IDS...]
Bonus
Ajouter une option de lancement -a / --all qui supprime tout les conteneurs:

./delete-container.sh [-a|--all]

# STAGE03
# Objectifs :
Supprimer les images créées en utilisant des lignes de commande

# Consignes :
Vous devez créer un script bash qui supprimera une ou plusieurs images Docker.

Les noms des images seront passés via des paramètres d'entrée.

# En pratique :
Vous devriez lancer votre programme ainsi :

./delete-image.sh IMAGE_NAME [IMAGE_NAMES...]
Bonus
Ajouter une option de lancement -a / --all qui supprime toutes les images :
./delete-image.sh [-a|--all]
Ajouter un regex dans les noms d'images :
./delete-image.sh etna* #Supprime toutes les images qui commencent par "etna"
./delete-image.sh *etna #Supprime tout les images qui finissent par "etna"
./delete-image.sh *etna* #Supprime tout les images qui contiennent "etna"

# STAGE04
# Objectifs :
Écrire un Dockerfile qui lance une application Node.js

# Consignes :
Vous devez créer un Dockerfile qui:

Sera basé sur Node.js 23
Installera les dépendances
Lancera le fichier app.js

# Ressources :
Vous trouverez un fichier app.js et un fichier package.json dans les ressources liées au projet.

Ces fichiers, app.js et package.json, sont nécessaires pour faire tourner votre application dans le conteneur.

Vous ne devrez pas les rendre.
