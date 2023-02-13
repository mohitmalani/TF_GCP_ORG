provider "google" {
  region  = var.region
}

resource "random_integer" "int" {
    min = 100
    max = 1000000
}

terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = ">=4.0, <5.0"
    }
  }
}