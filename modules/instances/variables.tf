variable "network" {
  default = "default"
}

variable "region" {
  default = "europe-west1"
}

variable "zone" {
  default = "europe-west1-b"
}

variable "script_path" {
  default = "./scripts/bootstrap.sh"
  description = "Where is the path to the script locally on the machine?"
}

variable "ip_address" {
  default = ""
}

variable "private_key" {
  default = ""
}


