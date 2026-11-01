variable "vpc_id" {
  type = string
}

variable "Environment" {
 type = string
}

variable "vpc_tag" {
  type = string
}

variable "vpc_cidr" {
  type = string
}


variable "public_subnet_01_cidr" {
  type = string
}

variable "public_subnet_01_name" {
  type = string
}

variable "public_subnet_02_cidr" {
  type = string
}

variable "public_subnet_02_name" {
  type = string
}

variable "public_subnet_03_cidr" {
  type = string
}

variable "public_subnet_03_name" {
  type = string
}

variable "private_subnet_01_cidr" {
  type = string
}

variable "private_subnet_01_name" {
  type = string
}

variable "private_subnet_02_cidr" {
  type = string
}

variable "private_subnet_02_name" {
  type = string
}

variable "private_subnet_03_cidr" {
  type = string
}

variable "private_subnet_03_name" {
  type = string
}

variable "igw_name" {
  type = string
}

variable "public_rt_name" {
  type = string
}

variable "nat_gw_name" {
  type = string
}

variable "private_rt_name" {
  type = string
}