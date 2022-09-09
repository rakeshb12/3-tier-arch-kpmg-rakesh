resource "google_compute_firewall" "allow-traffic" {
  name    = "test-firewall"
  network = google_compute_network.kpmg-vpc-net.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }
  source_ranges = ["0.0.0.0/0"]
}
