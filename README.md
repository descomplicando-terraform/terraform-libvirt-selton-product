# terraform-libvirt-Selton-Lucas_IaC
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kubernetes"></a> [kubernetes](#module\_kubernetes) | git::ssh://git@github.com/descomplicando-terraform/terraform-libvirt-selton-kubernetes.git | 0.0.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_img"></a> [img](#input\_img) | Path to the image that will be used | `string` | `"https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img"` | no |
| <a name="input_libvirt_disk_path"></a> [libvirt\_disk\_path](#input\_libvirt\_disk\_path) | Path to libvirt the pool | `string` | `"var/lib/libvirt/pool/kubernetes"` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | ram | `number` | `4096` | no |
| <a name="input_nodes"></a> [nodes](#input\_nodes) | List with the names of each node that will be created | `list(any)` | <pre>[<br/>  "edge01",<br/>  "edge02"<br/>]</pre> | no |
| <a name="input_pool"></a> [pool](#input\_pool) | Name of the pool that will be created | `string` | `"kubernetes"` | no |
| <a name="input_vcpus"></a> [vcpus](#input\_vcpus) | vcpu | `number` | `2` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->