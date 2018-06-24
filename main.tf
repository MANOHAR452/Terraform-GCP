resource "google_compute_instance" "test-instance" {
  name         = "test"
  count        = "${var.count}"
  machine_type = "${var.vm_type}"

  zone = "${var.region}"

  tags = [
    "${var.network}-firewall-ssh",
    "${var.network}-firewall-http",
    "${var.network}-firewall-https",
    "${var.network}-firewall-icmp",
    "${var.network}-firewall-postgresql",
    "${var.network}-firewall-openshift-console",
    "${var.network}-firewall-secure-forward",
  ]

  boot_disk {
    initialize_params {
      image = "${var.os["centos6"]}"
    }
  }

  metadata {
    hostname = "testvm"
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.test_network_subnetwork.name}"

    access_config {
      // Ephemeral IP
    }
  }
}