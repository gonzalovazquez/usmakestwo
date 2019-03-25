
variable "project_name" {
  type = "string"
  default = "personal-website-235123"
}

provider "google" {
  project = "${var.project_name}"
  region  = "us-east4"
  zone    = "us-east4-a"
}

# GOOGLE CLOUD STORAGE - Publish Website
resource "google_storage_bucket" "usmakestwo" {
  name = "www.usmakestwo.com"
}

resource "google_storage_bucket_acl" "usmakestwo-acl" {
  bucket = "${google_storage_bucket.usmakestwo.name}"

  role_entity = [
    "READER:allUsers"
  ]
}

resource "google_storage_bucket_object" "www" {
  name   = "index.html"
  storage_class = "MULTI_REGIONAL"
  bucket = "${google_storage_bucket.usmakestwo.name}"
  source = "../src/index.html"
}