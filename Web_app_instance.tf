resource "google_compute_instance" "api" {
  project      = var.project_id
  name         = "${var.name}-gce"
  machine_type = "f1-micro"
  zone         = var.zone

 
  tags = [
    var.name,
  ]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
 
  metadata_startup_script = file("${path.module}/startup-script.sh")

  network_interface {
    network = google_compute_network.kpmg-vpc-net.id

    # Assign public ip
    access_config {}
  }


}