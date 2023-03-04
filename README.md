# Scaleway Kubernetes

* Simple cluster, Single region, Single environment
* This is design for development or testing
* Terraform local storage but you can change later per requirement.

## Regions and Zones

https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/regions_and_zones

Access key and Secret key -> https://console.scaleway.com/project/credentials

Project id -> https://console.scaleway.com/project/settings

## How to use?

1. Copy `terraform.tfvars.example` to `terraform.tfvars`
2. Edit proper values of variables
3. run `terraform init` (Only first time)
4. run `terraform apply --auto-approve`

After succesfully create cluster. You can get KUBECONFIG from `terraform output --raw kubeconfig > kubeconfig.config`

Then `export KUBECONFIG=kubeconfig.config`

After this you can use `kubectl` as normal operation.

