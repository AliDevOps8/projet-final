# Image de base
FROM python

# Métadonnées
LABEL maintainer="SAMID"

# Variables d'environnement
ENV ODOO_URL="http://odoo.example.com"
ENV PGADMIN_URL="http://pgadmin.example.com"

# Instructions d'installation
RUN pip install Flask

# Répertoire de travail dans le conteneur
WORKDIR /opt

# Copier les fichiers locaux dans le conteneur
COPY . .

# Exposer le port 8080
EXPOSE 8080

# Commande par défaut à exécuter lorsque le conteneur démarre
CMD ["python3", "app.py"]