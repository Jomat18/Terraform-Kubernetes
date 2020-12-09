
# Terraform plugin for creating random ids
resource "random_id" "instance_id" {
  byte_length = 4
}

resource "google_compute_instance" "my_instance" {
  name         = "${var.app_name}-${random_id.instance_id.hex}"
  machine_type = "f1-micro"
  zone         = var.zone
  #hostname     = "${var.app_name}-${random_id.instance_id.hex}"
  tags         = ["ssh","http"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1604-lts"
    }
  }

  #metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq build-essential apache2"
  metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq build-essential python-pip rsync; pip install flask"


  network_interface {
    network       = google_compute_network.vpc.name
    subnetwork    = google_compute_subnetwork.public_subnet.name
    access_config { 
      // Include this section to give the VM an external ip address
    }
  }

  metadata = {
    ssh-keys = "${var.username}:${file("~/.ssh/id_rsa.pub")}"
  }
} 