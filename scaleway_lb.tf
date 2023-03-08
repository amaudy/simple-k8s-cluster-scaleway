resource "scaleway_lb_ip" "nginx_ip" {
  zone       = var.zone
  project_id = scaleway_k8s_cluster.rose.project_id
}