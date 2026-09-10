resource "aws_instance" "example_3" {
  ami = var.ami_id
  subnet_id = var.subnet_id
  instance_type = var.instance_type

  associate_public_ip_address = var.public_ip
  #key_name = aws_key_pair.custom_key.key_name
  #security_groups = [aws_security_group.allow_tls.id]     ---if using this the ec2 is getting destroyed not updated so better is to use vpc_security_group_ids instead of security_groups
vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    Name = var.tags
  }
}