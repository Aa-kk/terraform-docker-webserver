locals{
  image_name="akmba/my-first-repo:v1"
  internal_port=80
  external_port=8081
}

#Sample imput passed into the terrarform module 
module "aks_container"{
  source        = "github.com/Aa-kk/terraform-docker-webserver?ref=v1.0.1"
  image_name    = local.image_name
  internal_port = local.internal_port
  external_port = local.external_port
}

output "container_id" {
  value = module.aks_container.container_id
}