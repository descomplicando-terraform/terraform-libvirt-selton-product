<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_libvirt"></a> [libvirt](#requirement\_libvirt) | 0.7.6 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_libvirt"></a> [libvirt](#provider\_libvirt) | 0.7.6 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [libvirt_cloudinit_disk.commoninit](https://registry.terraform.io/providers/dmacvicar/libvirt/0.7.6/docs/resources/cloudinit_disk) | resource |
| [libvirt_domain.workers](https://registry.terraform.io/providers/dmacvicar/libvirt/0.7.6/docs/resources/domain) | resource |
| [libvirt_network.worker-network](https://registry.terraform.io/providers/dmacvicar/libvirt/0.7.6/docs/resources/network) | resource |
| [libvirt_pool.workers](https://registry.terraform.io/providers/dmacvicar/libvirt/0.7.6/docs/resources/pool) | resource |
| [libvirt_volume.ubuntu-worker](https://registry.terraform.io/providers/dmacvicar/libvirt/0.7.6/docs/resources/volume) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_img"></a> [img](#input\_img) | Path to the image that will be used | `string` | `"https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img"` | no |
| <a name="input_libvirt_disk_path"></a> [libvirt\_disk\_path](#input\_libvirt\_disk\_path) | Path to libvirt the pool | `string` | `"var/lib/libvirt/pool/workers"` | no |
| <a name="input_nodes"></a> [nodes](#input\_nodes) | List with the names of each node that will be created | `list(any)` | <pre>[<br>  "edge01",<br>  "edge02"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_workers_ip"></a> [workers\_ip](#output\_workers\_ip) | Return the IP address of the domains created |
<!-- END_TF_DOCS -->