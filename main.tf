module "edge" {
  source = "git@github.com:descomplicando-terraform/terraform-libvirt-selton-kubernetes.git"
}

module "controlplane" {
  source            = "git@github.com:descomplicando-terraform/terraform-libvirt-selton-kubernetes.git"
  nodes             = ["cp01"]
  memory            = 6144
  libvirt_disk_path = "var/lib/libvirt/pool/cp"
}