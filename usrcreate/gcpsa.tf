resource "google_service_account" "aws2gcpsa" {
  account_id   = "aws2gcp-sa"
  display_name = "AWS To GCP Service Account"
  project = var.hst_prj_id
}

resource "google_service_account_key" "sakey" {
  service_account_id = google_service_account.aws2gcpsa.name
}

resource "local_file" "saaccountjson" {
  content = base64decode(google_service_account_key.sakey.private_key)
  filename = "aws2gcp-sa.json"
}

resource "google_service_account_iam_member" "tokencreate" {
  service_account_id = google_service_account.aws2gcpsa.name
  role = "roles/iam.serviceAccountTokenCreator"
  member = var.memname
}