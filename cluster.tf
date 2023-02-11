resource "scaleway_k8s_cluster" "rose" {
  name    = "rose"
  version = "1.24.3"
  cni     = "cilium"
}

resource "scaleway_k8s_pool" "john" {
  cluster_id = scaleway_k8s_cluster.rose.id
  name       = "jcluster"
  node_type  = "DEV1-M"
  size       = 5
}

output "kubeconfig" {
  sensitive = true
  value     = scaleway_k8s_cluster.rose.kubeconfig[0].config_file
}