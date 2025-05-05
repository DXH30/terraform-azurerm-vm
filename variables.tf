variable "os" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })

  default = {
    publisher = "Canonical"
    offer     = "Ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }
}

variable "security_rule" {
  description = "The list of security group rule"
  type        = list(map(string))
  default = [
    {
      name                       = "AllowSSH"
      priority                   = 1000
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "22"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  ]
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "size" {
  description = "The size of the virtual machine"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "The admin username for the VM"
  type        = string
}

variable "address_spaces" {
  description = "VNET Address Spaces"
  type        = string
}

variable "address_prefixes" {
  description = "Subnet Prefixes"
  type        = string
}

variable "env" {
  description = "Environment"
  type = string
}
