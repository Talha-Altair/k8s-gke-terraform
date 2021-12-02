provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.creds_file_path)
}

data "google_client_config" "default" {}

provider "kubernetes" {

  host                   = "https://${google_container_cluster.primary.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(google_container_cluster.primary.master_auth.0.cluster_ca_certificate)
}

