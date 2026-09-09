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
  
  # Remote-exec provisioner (runs commands on the EC2 instance)
  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install httpd -y",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd",
      "echo 'Hello from Terraform remote-exec 22!' | sudo tee /var/www/html/index.html"
    ]
  }

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ec2-user"
    private_key = file("C:\\Users\\ketan\\Downloads\\github\\aws-with-terraform\\day_04\\file-prov\\key.pem")
    timeout     = "4m"
  }

  tags = {
    Name = "Instance-3"
  }
}