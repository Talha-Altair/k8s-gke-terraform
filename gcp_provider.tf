provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.creds_file_path)
}
