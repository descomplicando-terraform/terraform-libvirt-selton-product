output "workers_ip" {
  value = libvirt_domain.workers.*.network_interface.0.addresses
}