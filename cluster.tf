resource "scaleway_k8s_cluster" "jack" {
  name    = "jack"
  version = "1.24.3"
  cni     = "cilium"
}

resource "scaleway_k8s_pool" "john" {
  cluster_id = scaleway_k8s_cluster.jack.id
  name       = "john"
  node_type  = "DEV1-M"
  size       = 3
}

output "kubeconfig" {
  sensitive = true
  value     = scaleway_k8s_cluster.jack.kubeconfig[0].config_file
}