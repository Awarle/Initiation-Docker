# 1. Utiliser l'image officielle de Node.js version 23
FROM node:23

# 2. Créer un répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# 3. Copier les fichiers nécessaires dans le conteneur
COPY package.json ./
COPY app.js ./

# 4. Installer les dépendances
RUN npm install

# 5. Exposer le port sur lequel l'application écoute (à adapter si nécessaire)
EXPOSE 3000

# 6. Lancer l'application
CMD ["node", "app.js"]
