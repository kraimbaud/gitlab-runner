variable "project" {
  default = "your-project"
}

variable "network" {
  default = "gitlab-runner"
}

variable "credentials" {
  default = "terraform-key.json"
}

variable "region" {
  default = "europe-west1"
}

variable "zone" {
  default = "europe-west1-b"
}

variable "script" {
  default = "./scripts/bootstrap.sh"
}
