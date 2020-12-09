
resource "google_storage_bucket" "my-storage" {
  name          = "${var.app_project}-my-storage"
  project	    = var.app_project
  location      = var.region
  force_destroy = true
  storage_class = "STANDARD"
}