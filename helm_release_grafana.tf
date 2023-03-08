resource "helm_release" "grafana" {
  name             = "grafana"
  namespace        = "monitoring"
  create_namespace = true

  repository        = "https://grafana.github.io/helm-charts"
  chart             = "grafana"
  dependency_update = true

  set {
    name  = "persistence.enabled"
    value = "true"
  }

  set {
    name  = "persistence.type"
    value = "pvc"
  }

  set {
    name  = "persistence.size"
    value = "10Gi"
  }
}