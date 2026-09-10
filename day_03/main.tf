resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id

  tags = {
    Name = "tf-day3-sg"
  }
}
resource "aws_instance" "example_3" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  associate_public_ip_address = var.public_ip
  security_groups = [aws_security_group.allow_tls.id]
  key_name = "b2-Mumbai"

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install httpd -y
              systemctl start httpd
              systemctl enable httpd
              echo "Hello from Terraform" > /var/www/html/index.html
              EOF
  tags = {
    Name = "Instance-3"
  }
}