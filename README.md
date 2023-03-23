# Scaleway Kubernetes

* Simple cluster, Single region, Single environment
* This is design for development or testing
* Terraform local storage but you can change later per requirement.

## Scaleway's Regions and Zones

| Regions | Zones    |
|---------|----------|
| fr-par  |          |
|         | fr-par-1 |
|         | fr-par-2 |
|         | fr-par-3 |
| nl-ams  |          |
|         | nl-ams-1 |
|         | nl-ams-2 |
| pl-waw  |          |
|         | pl-waw-1 |

https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/regions_and_zones

### Access key and Secret key

Visit https://console.scaleway.com/project/credentials

### Project id 

Visit https://console.scaleway.com/project/settings

## How to use?

1. Copy `terraform.tfvars.example` to `terraform.tfvars`
2. Edit proper values of variables
3. run `terraform init` (Only first time)
4. run `terraform apply --auto-approve`

## KUBECONFIG

1. `terraform output --raw kubeconfig > kubeconfig.config`
2. `chmod 0400 kubeconfig.config`
3. `export KUBECONFIG=kubeconfig.config`
4. Now you ready to use `kubectl`
