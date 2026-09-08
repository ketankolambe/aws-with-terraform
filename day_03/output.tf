output "instance_pulic_ip" {
  description = "will show public ip"
  value = aws_instance.example_3.public_ip
}

output "instance_private_ip" {
  description = "will show private ip"
  value = aws_instance.example_3.private_ip
}

output "aws_security_group" {
  description = "will show private ip"
  value = aws_security_group.allow_tls.id
}