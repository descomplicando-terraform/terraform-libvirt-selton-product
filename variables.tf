

variable "config" {
  type        = map(any)
  description = "map with configurations"
  default = {
    edge = {
      img               = "https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img"
      nodes             = ["edge01", "edge02"]
      pool              = "kubernetes"
      libvirt_disk_path = "/var/lib/libvirt/pool/kubernetes"
      memory            = "4096"
      vcpus             = 2
    },
    cp = {
      img               = "https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img"
      nodes             = ["cp01"]
      pool              = "cp"
      libvirt_disk_path = "/var/lib/libvirt/pool/cp"
      memory            = "6144"
      vcpus             = 2
    }
  }
}
