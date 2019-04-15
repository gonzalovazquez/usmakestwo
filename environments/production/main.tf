provider "google" {
  project = "${var.project_name}"
  region  = "us-east4"
  zone    = "us-east4-a"
}

# GOOGLE CLOUD STORAGE - Publish Website
resource "google_storage_bucket" "usmakestwo" {
  name     = "${var.website_domain}"
  location = "US"

  website {
    main_page_suffix = "index.html"
  }
}

resource "google_storage_bucket_iam_member" "member" {
  bucket = "${google_storage_bucket.usmakestwo.name}"
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}

resource "google_storage_bucket_object" "index" {
  name          = "index.html"
  storage_class = "MULTI_REGIONAL"
  bucket        = "${google_storage_bucket.usmakestwo.name}"
  source        = "../../src/index.html"
}

resource "google_storage_bucket_object" "privacy" {
  name          = "privacy.html"
  storage_class = "MULTI_REGIONAL"
  bucket        = "${google_storage_bucket.usmakestwo.name}"
  source        = "../../src/privacy.html"
}

# Stylesheet
resource "google_storage_bucket_object" "css" {
  name          = "styles/application.css"
  storage_class = "MULTI_REGIONAL"
  bucket        = "${google_storage_bucket.usmakestwo.name}"
  source        = "../../src/styles/application.css"
  content_type  = "text/css"
}

# Images
resource "google_storage_bucket_object" "logo" {
  name          = "images/UsMakesTwoLogo.png"
  storage_class = "MULTI_REGIONAL"
  bucket        = "${google_storage_bucket.usmakestwo.name}"
  source        = "../../src/images/UsMakesTwoLogo.png"
}

resource "google_storage_bucket_object" "sprite" {
  name          = "images/sprite.png"
  storage_class = "MULTI_REGIONAL"
  bucket        = "${google_storage_bucket.usmakestwo.name}"
  source        = "../../src/images/sprite.png"
}

resource "google_storage_bucket_object" "bg" {
  name          = "images/bg.jpeg"
  storage_class = "MULTI_REGIONAL"
  bucket        = "${google_storage_bucket.usmakestwo.name}"
  source        = "../../src/images/bg.jpeg"
}

resource "google_storage_bucket_object" "cibc" {
  name          = "images/clients/CIBC_logo.png"
  storage_class = "MULTI_REGIONAL"
  bucket        = "${google_storage_bucket.usmakestwo.name}"
  source        = "../../src/images/clients/CIBC_logo.png"
}

resource "google_storage_bucket_object" "td" {
  name          = "images/clients/td-bank-logo.png"
  storage_class = "MULTI_REGIONAL"
  bucket        = "${google_storage_bucket.usmakestwo.name}"
  source        = "../../src/images/clients/td-bank-logo.png"
}

resource "google_storage_bucket_object" "font_woff" {
  name          = "fonts/font-awesome/fontawesome-webfont.woff"
  storage_class = "MULTI_REGIONAL"
  bucket        = "${google_storage_bucket.usmakestwo.name}"
  source        = "../../src/fonts/font-awesome/fontawesome-webfont.woff"
}

resource "google_storage_bucket_object" "font_ttf" {
  name          = "fonts/font-awesome/fontawesome-webfont.ttf"
  storage_class = "MULTI_REGIONAL"
  bucket        = "${google_storage_bucket.usmakestwo.name}"
  source        = "../../src/fonts/font-awesome/fontawesome-webfont.ttf"
}
