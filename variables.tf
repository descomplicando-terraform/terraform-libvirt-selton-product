variable "pool" {
  type        = string
  default     = "kubernetes"
  description = "Name of the pool that will be created"
}

variable "libvirt_disk_path" {
  type        = string
  default     = "/var/lib/libvirt/pool/kubernetes"
  description = "Path to libvirt the pool"
}

variable "nodes" {
  type        = list(any)
  default     = ["edge01", "edge02"]
  description = "List with the names of each node that will be created"
}

variable "img" {
  type        = string
  default     = "https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img"
  description = "Path to the image that will be used"
}

variable "memory" {
  type        = number
  default     = 4096
  description = "ram"
}

variable "vcpus" {
  type        = number
  default     = 2
  description = "vcpu"
}

variable "config" {
  type        = map(any)
  description = "map with configurations"
  default = {
    edge = {
      img               = "/home/latarc/jammy-server-cloudimg-amd64.img"
      nodes             = ["edge01", "edge02"]
      pool              = "kubernetes"
      libvirt_disk_path = "/var/lib/libvirt/pool/kubernetes"
      memory            = "4096"
      vcpus             = 2
    },
    cp = {
      img               = "/home/latarc/jammy-server-cloudimg-amd64.img"
      nodes             = ["cp01"]
      pool              = "cp"
      libvirt_disk_path = "/var/lib/libvirt/pool/cp"
      memory            = "6144"
      vcpus             = 2
    }
  }
}
