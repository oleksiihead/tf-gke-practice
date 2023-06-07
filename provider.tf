terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "google" {
  project = var.GOOGLE_PROJECT
  region  = var.GOOGLE_REGION
}
