terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.8.3"
    }
  }
  required_version = ">= 1.9.0"
}

provider "libvirt" {
  uri = "qemu+ssh://selton@qemu/system?known_hosts_verify=ignore&sshauth=privkey"
}