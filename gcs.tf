resource "random_string" "bucket_suffix" {
  length = 16
  special = false
  upper = false
}

resource "google_storage_bucket" "tfstate-bucket" {
  name = "${var.GOOGLE_PROJECT}-${random_string.bucket_suffix.result}"
  location = var.GOOGLE_REGION
  force_destroy = true
}
