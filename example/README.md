
# Configuration Example

This directory contains configuration files to pull and run a docker image from Docker hub.

## Usage

To run this example there are two ways, 

1. To execute, you can run:

bash
$ terraform init
$ terraform plan
$ terraform apply

Run `terraform destroy` when you don't need these resources.

2. To execute, you can also run:

bash
$ make init
$ make plan
$ make apply



## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| docker | >= 2.16.0 |

## Providers
### DataDog provider


Since the Docker provider uses the Docker API, it is immediately compatible with single server Docker 

## Inputs

| Name | Description | Type |
|------|-------------|:----:|
| Image Name | The name of the docker image you intend to pull from dockerhub| string |
| internal port | port number the container uses to communicate with its host machine| Number |
| External port | Port number exposed by the host machine to the webserver| Number |

## Outputs

| Name | Description |
|------|-------------|
| container_id | The id of the running container|

Container would be successfully running on your host machine. You can confirm this by running 

```
Docker ps
```

## Authors

Module managed by [Akachukwu Mba](https://github.com/Aa-kk)

