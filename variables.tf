variable "GOOGLE_REGION" {
  type        = string
  description = "Desired Google region to use"
}

variable "GOOGLE_PROJECT" {
  type        = string
  description = "GCP project name"
}

variable "GKE_NUM_NODES" {
  type        = number
  description = "Number of GKE Nodes"
}
