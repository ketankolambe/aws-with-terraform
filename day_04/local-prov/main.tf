resource "aws_key_pair" "key" {
  key_name   = "key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKqM8VabZyxhOqTbcnnRwLf+S3Ztzp3qia8nleURnr5L ketan@DESKTOP-CNOU16P"
}


resource "aws_instance" "example_3" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.public_ip
  security_groups             = [aws_security_group.allow_tls.id]
  key_name                    = aws_key_pair.key.key_name
  
   # Local-exec provisioner (runs locally)
  provisioner "local-exec" {
    command = "echo The instance ${self.public_ip} is now running >> instance_info.txt"
  }


  tags = {
    Name = "Instance-3"
  }
}