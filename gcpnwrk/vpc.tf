# # Create Dedicated Project for Migration Activity

# resource "google_project" "hstprj_creation" {
#   name       = var.hst_prj_id
#   project_id = "${var.hst_prj_id}"
#   org_id     = var.org_id
# }

# Create dedicated VPC for Migration Activity

resource "google_compute_network" "vpc-network" {
  name    = var.gcp_network
  auto_create_subnetworks = false
  project = var.hst_prj_id
}

# Create Private Subnet for Migration Activity

resource "google_compute_subnetwork" "gcp_subnet" {
  name    = var.gcp_subnet
  network       = google_compute_network.vpc-network.self_link
  ip_cidr_range = var.gcpsub_cidr_range
  region        = var.gcp_region
}