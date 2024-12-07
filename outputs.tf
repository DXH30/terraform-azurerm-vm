output "vm_id" {
  description = "The ID of the virtual machine"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "ssh_private_key" {
  description = "The private key for SSH access"
  value       = tls_private_key.ssh_key.private_key_pem
  sensitive   = true
}

output "vm_private_ip" {
  description = "The private IP address of the VM"
  value       = azurerm_network_interface.nic.ip_configuration[0].private_ip_address
}

output "vm_public_ip" {
  description = "The public IP address of the VM"
  value       = azurerm_public_ip.public_ip.ip_address
}

