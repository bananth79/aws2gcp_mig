variable "gcp_network" {
  type = string
}

variable "gcp_subnet" {
  type = string
}

variable "gcp_region" {
  type = string
}

variable "name" {
    type = string
}

variable "hst_prj_id" {
  type = string
}

data "google_project" "prjnum" {
  project_id = var.hst_prj_id
}

# variable "gcp_project" {
#     type = string
# }

variable "gcp_zone" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "aws_vpc_id" {
  type = string
}