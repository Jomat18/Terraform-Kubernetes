terraform {
  required_version = ">= 0.12"
}

provider "google" {
  project = var.app_project
  credentials = file(var.auth_file)
  region  = var.region
  zone    = var.zone
}