module "edge" {
  source = "https://github.com/descomplicando-terraform/terraform-libvirt-selton-groundwork"
}

module "controlplane" {
  source            = "https://github.com/descomplicando-terraform/terraform-libvirt-selton-groundwork"
  nodes             = ["cp01"]
  memory            = 6144
  libvirt_disk_path = "var/lib/libvirt/pool/cp"
}