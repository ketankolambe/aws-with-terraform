resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_tag
  }
}

resource "aws_subnet" "public_subnet_01" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_01_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet_01_name
  }
}

resource "aws_subnet" "public_subnet_02" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_02_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet_02_name
  }
}

resource "aws_subnet" "public_subnet_03" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_03_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet_03_name
  }
}


resource "aws_subnet" "private_subnet_01" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_01_cidr

  tags = {
    Name = var.private_subnet_01_name
  }
}

resource "aws_subnet" "private_subnet_02" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_02_cidr

  tags = {
    Name = var.private_subnet_02_name
  }
}

resource "aws_subnet" "private_subnet_03" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_03_cidr

  tags = {
    Name = var.private_subnet_03_name
  }
}


resource "aws_internet_gateway" "fctp_igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.igw_name
  }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.fctp_igw.id
  }


  tags = {
    Name = var.public_rt_name
  }
}

resource "aws_route_table_association" "public_rt" {
  subnet_id      = aws_subnet.public_subnet_01.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_eip" "lb" {
  #instance = aws_instance.web.id
  domain   = "vpc"
}


resource "aws_nat_gateway" "fctp_nat"{
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.public_subnet_01.id

  tags = {
    Name = "fctp-nat-tf"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.fctp_igw]
}


resource "aws_route_table_association" "private_rt" {
  subnet_id      = aws_subnet.private_subnet_01.id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.fctp_nat.id
  }

  tags = {
    Name = var.private_rt_name
  }
}