output "external_ip" {
  value       = kubernetes_service.default.status.0.load_balancer.0.ingress.0.ip
  description = "external ip of load balancer"
}
