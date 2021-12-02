# Terraform Module to Provision a GKE Cluster and Deploy a Microservice

## Setup

- Remove provider.tf file and place everything else in a module folder and invoke it from your main.tf file
- Configure providers for kubernetes and gcloud as per your requirement

## Variables to pass to Module

- [Terraform Module to Provision a GKE Cluster and Deploy a Microservice](#terraform-module-to-provision-a-gke-cluster-and-deploy-a-microservice)
  - [Setup](#setup)
  - [Variables to pass to Module](#variables-to-pass-to-module)
  - [region](#region)
  - [creds_file_path](#creds_file_path)
  - [project_id](#project_id)
  - [cluster_name](#cluster_name)
  - [machine_type](#machine_type)
  - [gke_num_nodes](#gke_num_nodes)
  - [image](#image)
  - [deployment_name](#deployment_name)
  - [port](#port)
  - [replicas](#replicas)
  - [config_map_name](#config_map_name)

## region

Region in which the GKE cluster will be provisioned

## creds_file_path

path to creds.json files for gcloud service account, feel free to update provider as per your requirment

## project_id

ID of Gcloud Project

## cluster_name

User Defined Name given to the Cluster

## machine_type

Machine Type to be used for the Node Pool

## gke_num_nodes

Number of Nodes in the Node Pool

## image

Docker Image URI

## deployment_name

User Defined Name to Assign to Deployment

## port

Docker Container Port

## replicas

Number of Replicas in the Deployment

## config_map_name

User Defined Name to be given to the configmap,
Edit Configmap.tf to your liking