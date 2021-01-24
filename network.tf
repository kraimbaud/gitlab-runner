resource "google_compute_network" "vpc_network" {
  name = var.network
}

resource "google_compute_firewall" "ssh-rule" {
  name = "ssh-connexion"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}
