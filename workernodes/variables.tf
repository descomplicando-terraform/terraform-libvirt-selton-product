variable "img" {
  type = string
  default = "https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img"
}

variable "nodes" {
  type = list
  default = ["edge01", "edge02"]
}

