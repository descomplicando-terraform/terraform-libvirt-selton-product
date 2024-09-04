output "workers_ip" {
  value       = libvirt_domain.controlplane.*.network_interface.0.addresses
  description = "Return the IP address of the domains created"
}