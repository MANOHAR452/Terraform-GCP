// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("${path.module}/account.json")}"
  project     = "${var.project-name}"
  region      = "${var.region}"
}
