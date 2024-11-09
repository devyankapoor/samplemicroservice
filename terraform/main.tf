terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.0"
    }
  }
}

# Configure the Docker provider
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Create a Docker network
resource "docker_network" "my_network" {
  name = "my_network"
}

resource "docker_image" "mongo" {
  name         = "mongo:4.4"
  keep_locally = true
}

resource "docker_container" "mongo" {
  name  = "mongo"
  image = docker_image.mongo.name
  ports {
    internal = 27017
    external = 27017
  }
}

# Create a Docker container for the Spring Boot application
resource "docker_image" "spring_boot_app" {
  name         = "spring_boot_app:latest"
  build {
    context    = "/home/devyan/Documents/samplemicroservice/backend"
    dockerfile = "Dockerfile"
  }
}