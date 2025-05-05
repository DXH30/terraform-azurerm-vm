## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.vm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_interface_security_group_association.nsg-nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_security_group_association) | resource |
| [azurerm_network_security_group.nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_public_ip.public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_resource_group.vm_rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [tls_private_key.ssh_key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_prefixes"></a> [address\_prefixes](#input\_address\_prefixes) | Subnet Prefixes | `string` | n/a | yes |
| <a name="input_address_spaces"></a> [address\_spaces](#input\_address\_spaces) | VNET Address Spaces | `string` | n/a | yes |
| <a name="input_admin_username"></a> [admin\_username](#input\_admin\_username) | The admin username for the VM | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | Environment | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location of the resource group | `string` | `"East US"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the virtual machine | `string` | n/a | yes |
| <a name="input_os"></a> [os](#input\_os) | n/a | <pre>object({<br/>    publisher = string<br/>    offer     = string<br/>    sku       = string<br/>    version   = string<br/>  })</pre> | <pre>{<br/>  "offer": "Ubuntu-24_04-lts",<br/>  "publisher": "Canonical",<br/>  "sku": "server",<br/>  "version": "latest"<br/>}</pre> | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_security_rule"></a> [security\_rule](#input\_security\_rule) | The list of security group rule | `list(map(string))` | <pre>[<br/>  {<br/>    "access": "Allow",<br/>    "destination_address_prefix": "*",<br/>    "destination_port_range": "22",<br/>    "direction": "Inbound",<br/>    "name": "AllowSSH",<br/>    "priority": 1000,<br/>    "protocol": "Tcp",<br/>    "source_address_prefix": "*",<br/>    "source_port_range": "*"<br/>  }<br/>]</pre> | no |
| <a name="input_size"></a> [size](#input\_size) | The size of the virtual machine | `string` | `"Standard_B1s"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ssh_private_key"></a> [ssh\_private\_key](#output\_ssh\_private\_key) | The private key for SSH access |
| <a name="output_vm_id"></a> [vm\_id](#output\_vm\_id) | The ID of the virtual machine |
| <a name="output_vm_private_ip"></a> [vm\_private\_ip](#output\_vm\_private\_ip) | The private IP address of the VM |
| <a name="output_vm_public_ip"></a> [vm\_public\_ip](#output\_vm\_public\_ip) | The public IP address of the VM |
