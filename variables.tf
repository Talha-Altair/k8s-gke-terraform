variable "project_id" {
  type        = string
  description = "project_id"
}

variable "region" {
  type        = string
  description = "region"
}

variable "gke_num_nodes" {
  default     = 2
  description = "number of gke nodes"
}
