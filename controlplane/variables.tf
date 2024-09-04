variable "img" {
  type        = string
  default     = "https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img"
  description = "Path to the image that will be used"
}

variable "nodes" {
  type        = list(any)
  default     = ["cp01"]
  description = "List with the names of each node that will be created"
}

variable "libvirt_disk_path" {
  type        = string
  default     = "var/lib/libvirt/pool/controlplane"
  description = "Path to libvirt the pool"
}
