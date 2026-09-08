resource "aws_instance" "example_3" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  tags = {
    Name = "Instance-3"
  }
}