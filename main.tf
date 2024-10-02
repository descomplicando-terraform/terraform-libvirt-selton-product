module "edge" {
  source = "git@github.com:descomplicando-terraform/terraform-libvirt-selton-kubernetes.git?ref=0.0.1"
}

module "controlplane" {
  source            = "git@github.com:descomplicando-terraform/terraform-libvirt-selton-kubernetes.git?ref=0.0.1"
  nodes             = ["cp01"]
  memory            = 6144
  libvirt_disk_path = "var/lib/libvirt/pool/cp"
}