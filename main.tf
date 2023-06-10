terraform {
  backend "gcs" {
    # bucket  = google_storage_bucket.tfstate-bucket.name
    bucket = "kbot-385713-p3xz4xnxms67nc5g"
    prefix  = "terraform/state"
  }
}

module "gke_cluster" {
  source         = "github.com/oleksiihead/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = var.GKE_NUM_NODES
}
