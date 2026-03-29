FROM python:3.11-slim

# Installer yt-dlp
RUN pip install --no-cache-dir yt-dlp

# Définir le dossier de travail
WORKDIR /downloads

# ENTRYPOINT = commande principale
ENTRYPOINT ["yt-dlp"]

# CMD = arguments par défaut
CMD ["--help"]
