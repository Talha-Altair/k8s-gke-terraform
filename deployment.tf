resource "kubernetes_deployment_v1" "default" {
  metadata {
    name = "${var.deployment_name}-deployment"
    labels = {
      app = var.deployment_name
    }
    namespace = var.namespace
  }

  spec {

    replicas = var.replicas

    selector {
      match_labels = {
        app = var.deployment_name
      }
    }

    template {
      metadata {
        labels = {
          app = var.deployment_name
        }
      }

      spec {
        container {
          image = var.image
          name  = var.deployment_name
          port {
            container_port = var.port
          }
        }
      }
    }
  }
}

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
