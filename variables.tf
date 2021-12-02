variable "project_id" {
  type        = string
  description = "project_id"
}

variable "region" {
  type        = string
  description = "region"
}

variable "creds_file_path" {
  type        = string
  description = "creds_file_path"
}

variable "cluster_name" {
  type        = string
  description = "cluster_name"
}

variable "gke_num_nodes" {
  default     = 2
  description = "number of gke nodes"
}

variable "image" {
  type        = string
  description = "docker image URI"
}

variable "deployment_name" {
  type        = string
  description = "Name to identify service and deployment after provisioning"
}

variable "namespace" {
  type        = string
  description = "NameSPace in which resources shall be provisoned"
  default = "default"
}

variable "port" {
  type        = string
  description = "docker container port"
}

variable "replicas" {
  type        = string
  description = "replicas of deployment pods"
}

variable "config_map_name" {
  type        = string
  description = "config_map_name"
}