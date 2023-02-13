resource "google_organization_policy" "disable_defaultVPC_policy" {
  org_id     = "${var.org_id}"
  constraint = "compute.skipDefaultNetworkCreation"

  boolean_policy {
    enforced = true
  }
}

resource "google_project" "my_project" {
  name       = "${var.project_name}"
  project_id = "gcp-cld-project-${random_integer.int.result}"
  org_id = "${var.org_id}"
  billing_account = var.billing_account
}

resource "google_project_service" "my-project" {
  count   = length(var.project_services)
  project = google_project.my_project.project_id
  service = element(var.project_services, count.index)
  disable_on_destroy = false

  depends_on = [google_project.my_project]

}

resource "time_sleep" "wait_120_seconds" {
    create_duration = "120s"
    depends_on = [google_project.my_project]
}

module "networking" {
    source = "git::git@github.com:cyse7125-fall2022-group04/terraform-gcp-networking.git"
    project_id = google_project.my_project.project_id
}

