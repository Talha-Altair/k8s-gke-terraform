resource "kubernetes_config_map" "default" {
  metadata {
    name = var.config_map_name
  }

  data = {
    talha                = "altair"
    tram = 1
    val = 3
    tasdf ="d s123"
  }

}