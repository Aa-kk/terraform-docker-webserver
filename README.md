

# Docker Image Terraform module

Terraform module which can pull and run images from docker hub.

## Usage
A static website image that is based of nginx was pulled from dockerhub and run on the local machine

 ```
module  "aks_container"{
source  =  "../"
image_name =  local.image_name
internal_port =  local.internal_port
external_port =  local.external_port
}
 ```

## Example

* link to git repo
* which shows how to create a dashboard with this module.

## Requirements

| Name | Version | Source |
|------|---------|---------|
| terraform | >= 1.1.7 |
| docker | >= 2.16.0 | kreuzwerker/docker



## Providers
### Docker Provider

Since the Docker provider uses the Docker API, it is immediately compatible with single server Docker 



## Inputs
The following variables need to be declared. they can be set as default or added while calling the module.

| Name | Description | Type |
|------|-------------|:----:|
| Image Name | The name of the docker image you intend to pull from dockerhub| string |
| internal port | port number the container uses to communicate with its host machine| Number |
| External port | Port number exposed by the host machine to the webserver| Number |



## Authors

Module managed by [Akachukwu Mba]
