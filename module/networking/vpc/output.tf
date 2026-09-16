output "vpc_name" {
  value = aws_vpc.main.id
}

output "public_subnet_01_id" {
  value = aws_subnet.public_subnet_01.id
}

output "public_subnet_02_id" {
  value = aws_subnet.public_subnet_02.id
}

output "public_subnet_03_id" {
  value = aws_subnet.public_subnet_03.id
}

output "private_subnet_01_id" {
  value = aws_subnet.private_subnet_01.id
}

output "private_subnet_02_id" {
  value = aws_subnet.private_subnet_02.id
}

output "private_subnet_03_id" {
  value = aws_subnet.private_subnet_03.id
}

output "igw_id" {
  value = aws_internet_gateway.fctp_igw.id
}

output "public_rt_id" {
  value = aws_route_table.public_rt.id
}