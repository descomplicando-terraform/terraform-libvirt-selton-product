resource "libvirt_pool" "workers" {
  name = "workers"
  type = "dir"
  path = var.libvirt_disk_path
}

resource "libvirt_volume" "ubuntu-worker" {
  count  = length(var.nodes)
  name   = "ubuntuqcow-${var.nodes[count.index]}"
  pool   = libvirt_pool.workers.name
  source = var.img
  format = "qcow2"
}

resource "libvirt_network" "worker-network" {
  count  = length(var.nodes)
  name   = "${var.nodes[count.index]}-net"
  mode   = "bridge"
  bridge = "br0"
  dhcp {
    enabled = true
  }

}

# data "template_file" "user_data" {
#   count    = length(var.nodes)
#   template = file("${path.module}/config/cloud_init.yaml")

#   vars = {
#     hostname = "${var.nodes[count.index]}"
#   }
# }

resource "libvirt_cloudinit_disk" "commoninit" {
  count = length(var.nodes)
  name  = "${var.nodes[count.index]}-commoninit.iso"
  pool  = libvirt_pool.workers.name
}

resource "libvirt_domain" "workers" {
  count  = length(var.nodes)
  name   = var.nodes[count.index]
  memory = 4096
  vcpu   = 2

  cloudinit = libvirt_cloudinit_disk.commoninit[count.index].id

  network_interface {
    network_name   = libvirt_network.worker-network[count.index].name
    wait_for_lease = true
    hostname       = var.nodes[count.index]
  }

  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  console {
    type        = "pty"
    target_port = "1"
    target_type = "virtio"
  }

  disk {
    volume_id = libvirt_volume.ubuntu-worker[count.index].id
  }

  qemu_agent = true

}