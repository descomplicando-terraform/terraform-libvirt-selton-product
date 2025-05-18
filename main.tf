module "kubernetes" {
  source   = "git::ssh://git@github.com/descomplicando-terraform/terraform-libvirt-selton-kubernetes.git?ref=0.0.1"
  for_each = var.config


  img               = each.value.img
  libvirt_disk_path = each.value.libvirt_disk_path
  memory            = each.value.memory
  vcpus             = each.value.vcpus
  nodes             = each.value.nodes
  pool              = each.value.pool
}
