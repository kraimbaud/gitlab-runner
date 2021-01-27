resource "google_compute_instance" "default" {
    name = var.vm_name
    machine_type = "n2-highmem-2"
    zone = var.zone

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-9"
        }
    }

    network_interface {
        network = var.network
        access_config {
            // Include this section to give the VM an external IP address
        }
    }

    metadata_startup_script = file("./scripts/bootstrap.sh")

    tags = ["node"]

    lifecycle {
        ignore_changes = [attached_disk]
    }
}

