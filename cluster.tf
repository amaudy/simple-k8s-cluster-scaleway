resource "scaleway_k8s_cluster" "rose" {
  name    = "rose"
  version = "1.27.2"
  cni     = "cilium"
}

resource "scaleway_k8s_pool" "john" {
  cluster_id = scaleway_k8s_cluster.rose.id
  name       = var.cluster_name
  node_type  = var.worker_node_size
  size       = var.total_worker_node
}


resource "null_resource" "kubeconfig" {
  depends_on = [scaleway_k8s_pool.john] # at least one pool here
  triggers = {
    host                   = scaleway_k8s_cluster.rose.kubeconfig[0].host
    token                  = scaleway_k8s_cluster.rose.kubeconfig[0].token
    cluster_ca_certificate = scaleway_k8s_cluster.rose.kubeconfig[0].cluster_ca_certificate
  }
}

output "kubeconfig" {
  sensitive = true
  value     = scaleway_k8s_cluster.rose.kubeconfig[0].config_file
}