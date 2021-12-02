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

          env_from {
            config_map_ref {
              name = var.config_map_name
            }
          }

          port {
            container_port = var.port
          }
        }
      }
    }
  }
}
