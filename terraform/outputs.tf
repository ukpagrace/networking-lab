output "gateway_public_ip" {
  description = "Public IP of the gateway server"
  value       = contabo_instance.gateway.ip_config[0].v4[0].ip
}

output "private_server_public_ip" {
  description = "Public IP of the private server"
  value       = contabo_instance.private_server.ip_config[0].v4[0].ip
}

output "private_network_cidr" {
  description = "CIDR of the private network"
  value       = contabo_private_network.lab_net.cidr
}