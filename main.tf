terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}

resource "docker_image" "webserver_image" {
    name = var.image_name
}

resource "docker_container" "webservercontainer" {
    image = docker_image.webserver_image.name
    name = "docker_container"

    ports {
        internal = var.internal_port
        external = var.external_port
    }
}

output "container_id" {
  value = docker_container.webservercontainer.id
}