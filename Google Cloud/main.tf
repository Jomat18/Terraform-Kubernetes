provider "google" {
  credentials = file("service-account.json")
  project     = "terraform-297504"
  region      = "us-central1"
  zone        = "us-central1-c" 
}

resource "google_compute_instance" "my-instance" {
  name = "test-instance"
  machine_type = "f1-micro"
  zone  = "us-central1-c" 

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"    
      #image = "ubuntu-os-cloud/ubuntu-1604-lts"
    }
  }

  network_interface {
    # network = "default"  
    network = google_compute_network.vpc_network.self_link    
    access_config {
    }
  }

  #metadata {
  #  sshKeys = "test:${file("test.pub")}"
  #}
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
  auto_create_subnetworks = "true"    
}