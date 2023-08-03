module "gcpprjnwk_create" {
  source = "./gcpnwrk"

  org_id = var.org_id
  hst_prj_id = var.hst_prj_id
  gcp_network = var.gcp_network
  gcp_subnet = var.gcp_subnet
  gcpsub_cidr_range = var.gcpsub_cidr_range
  gcp_region = var.gcp_region
}

module "gcpsa_create" {
  source = "./usrcreate"

  hst_prj_id = var.hst_prj_id
  memname = var.memname

depends_on = [ module.gcpprjnwk_create ]
}

module "vpn_create" {
  source = "./createvpn"

  name = var.name
  gcp_region = var.gcp_region
  gcp_subnet = var.gcp_subnet
  gcp_network = var.gcp_network
  gcp_zone = var.gcp_zone
  aws_region = var.aws_region
  aws_vpc_id = var.aws_vpc_id
  hst_prj_id = var.hst_prj_id

depends_on = [ module.gcpsa_create ]
}