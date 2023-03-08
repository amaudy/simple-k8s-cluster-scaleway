resource "helm_release" "prometheus" {
  name              = "prometheus"
  namespace         = "monitoring"
  create_namespace  = true
  cleanup_on_fail   = true
  dependency_update = true

  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "prometheus"
}