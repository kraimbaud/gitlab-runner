terraform {
  required_version = "~>0.12"
  backend "local" {}
}

module "master_node" {
  source = "./modules/instances"
  network = google_compute_network.vpc_network.name
  script_path = file(var.script)
  zone = var.zone
}
