# ------------------------------------------------------------------
# GCP Project, Service Account, Key, VPC and Subnet Creation
# ------------------------------------------------------------------
variable "org_id" {
  type = string
  default = "0"
}

variable "memname" {
  type = string
  default = "user:anantbal@onixdev5.com"
}

variable "hst_prj_id" {
  type = string
  default = "aws2gcp-mig"
}

variable "gcp_network" {
  type = string
  default = "aws2gcp-vpc"
}

variable "gcp_subnet" {
  type = string
  default = "aws2gcp-subnet"
}

variable "gcpsub_cidr_range" {
  type = string
  default = "10.0.120.0/24"
}

variable "gcp_region" {
  type = string
  default = "us-east1"
}

# ------------------------------------------------------------------
# GCP VPN Creation
# ------------------------------------------------------------------

variable "name" {
    type = string
    default = "aws-to-gcp-vpn"
}

# variable "gcp_project" {
#     type = string
#     default = "${data.google_project.prjnum.number}"
# }

variable "gcp_zone" {
  type = string
  default = "us-central1-a"
}

variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "aws_vpc_id" {
  type = string
  default = "vpc-0d0d35fe69c27699d"
}



