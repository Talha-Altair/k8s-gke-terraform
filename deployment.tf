resource "kubernetes_deployment_v1" "default" {
  metadata {
    name = "terraform-nginx-example"
    labels = {
      test = "nginx"
    }
    namespace = var.namespace
  }

  spec {

    replicas = 3

    selector {
      match_labels = {
        test = "nginx"
      }
    }

    template {
      metadata {
        labels = {
          test = "nginx"
        }
      }

      spec {
        container {
          image = "docker.io/nginx"
          name  = "nginx"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "default" {
  metadata {
    name      = "nginx-service-example"
    namespace = var.namespace
  }
  spec {
    selector = {
      test = "nginx"
    }
    port {
      port        = 80
      target_port = 80
    }
    type = "LoadBalancer"
  }
}
