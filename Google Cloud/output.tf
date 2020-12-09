
output "instance-name" {
  value = google_compute_instance.my_instance.name
}

output "external-ip" {
  value = google_compute_instance.my_instance.network_interface.0.access_config.0.nat_ip
}

output "internal-ip" {
  value = google_compute_instance.my_instance.network_interface.0.network_ip
}