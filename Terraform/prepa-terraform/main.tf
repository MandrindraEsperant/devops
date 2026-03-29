terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# 1. Télécharger l'image Nginx
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# 2. Créer et lancer le conteneur
resource "docker_container" "serveur_boa_tf" {
  image = docker_image.nginx.image_id
  name  = "serveur-bourse-boa"
  ports {
    internal = 80
    external = 8081
  }
}