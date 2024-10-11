module "kubernetes" {
  source            = "git::ssh://git@github.com/descomplicando-terraform/terraform-libvirt-selton-kubernetes.git?ref=0.0.1"
  img               = var.img
  libvirt_disk_path = var.libvirt_disk_path
  memory            = var.memory
  vcpus             = var.vcpus
  nodes             = var.nodes
  pool              = var.pool
}
