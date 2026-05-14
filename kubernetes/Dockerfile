# Image Python officielle
FROM python:3.11-slim

# Dossier de travail dans le container
WORKDIR /app

# Copier les fichiers du projet
COPY . .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port Flask
EXPOSE 5000

# Lancer l'application
CMD ["python", "app.py"]