terraform {
  required_version = "~>0.12"
  backend "local" {}
}

module "master_node" {
  count = var.nb_of_runners
  source = "./modules/instances"
  vm_name = "gitlab-runner-${count.index + 1}"
  network = google_compute_network.vpc_network.name
  script_path = file(var.script)
  zone = var.zone
}
