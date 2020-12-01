provider "google" {
  project = "test-github" 
  region  = "us-central1"
}

resource "google_compute_instance" "terraform" {
  name         = "monitoring-system"
  machine_type = "e2-small"
  zone         = "us-central1-a"
  tags         = ["http-server", "https-server"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  } 

  network_interface {
    network = "default"

    access_config {

    }
  }   
}

