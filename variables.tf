variable "region" {
  default = "us-east1"
}

variable "org_id"{
    description = "The ID of the org that you want to use"
    default = 1234567890
}

variable "billing_account" {
  default = "Enter your billing id"
  sensitive = true
}

variable "project_name"{
    description = "The name of the project in the folder"
    default = "GCP-Cloud-Computing"
}

variable "project_services" {
  type = list

  default = [
    "cloudresourcemanager.googleapis.com",
    "servicenetworking.googleapis.com",
    "container.googleapis.com",
    "compute.googleapis.com",
    "logging.googleapis.com",
  ]
  description = <<-EOF
  The GCP APIs that should be enabled in this project.
  EOF
}
