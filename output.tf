output "bastion_public_ips" {
  value = { for key, instance in aws_instance.bastion : key => instance.public_ip }
}
