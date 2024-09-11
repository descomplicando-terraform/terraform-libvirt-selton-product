output "kubernetes_ip" {
  value       = libvirt_domain.kubernetes.*.network_interface.0.addresses
  description = "Return the IP address of the domains created"
}