resource "kubernetes_service" "default" {
  metadata {
    name      = "${var.deployment_name}-service"
    namespace = var.namespace
  }
  spec {
    selector = {
      app = var.deployment_name
    }
    port {
      port        = 80
      target_port = var.port
    }
    type = "LoadBalancer"
  }
}