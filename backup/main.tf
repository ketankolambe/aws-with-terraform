resource "aws_instance" "example_3" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.public_ip
  security_groups             = [aws_security_group.allow_tls.id]
  key_name                    = "down"
  
     # Local-exec provisioner (runs locally)
  provisioner "local-exec" {
    when ="destroy"
    command = "scp -i C:/Users/ketan/.ssh/down.pem ec2-user@${self.public_ip}:/var/www/html/index.html ./index.html"
  }
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