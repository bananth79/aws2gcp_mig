# provider "google" {
#   alias = "impersonation"
#   project = var.hst_prj_id
#   scopes = [
#      "https://www.googleapis.com/auth/cloud-platform",
#      "https://www.googleapis.com/auth/userinfo.email",
#   ]
# }

# data "google_service_account_access_token" "mytoken" {
#  provider               	= google.impersonation
#  target_service_account 	= "aws2gcp-sa@${var.hst_prj_id}.iam.gserviceaccount.com"
#  scopes                 	= ["userinfo-email", "cloud-platform"]
#  lifetime               	= "1200s"
# }

# provider "google" {
#     alias = "iam"
#     access_token	= data.google_service_account_access_token.mytoken.access_token
# }

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 3.66.1"
    }
    
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.38.0"
    }
  }

  required_version = "~> 1.5.0"
}

provider "google" {
  project = var.hst_prj_id
  region  = var.gcp_region
  zone    = var.gcp_zone
}

provider "aws" {
  region = var.aws_region
}