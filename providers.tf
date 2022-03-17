terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.12.0"
    }
  }
}

variable "GOOGLE_CREDENTIALS" {
    type = string
    description = "key for GCP"
}

# Configura o Provider Google Cloud com o Projeto
provider "google" {
  credentials = var.GOOGLE_CREDENTIALS
  project = "lab-devops-cloud-123"
  region  = "us-west1"
  zone    = "us-west1-b"
}