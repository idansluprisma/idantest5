resource "google_storage_bucket" "terragoat_website" {
  name          = "terragot-${var.environment}"
  force_destroy = true
  labels = {
    yor_trace = "c43632bd-8596-4dcf-a12c-3a77631c9862"
  }
}

resource "google_storage_bucket_iam_binding" "allow_public_read" {
  bucket  = google_storage_bucket.terragoat_website.id
  members = ["allUsers"]
  role    = "roles/storage.objectViewer"
}