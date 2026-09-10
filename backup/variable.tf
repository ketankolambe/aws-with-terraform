variable "ami_id" {
  type    = string
  default = "ami-090d68841c2a28756"
}

variable "subnet_id" {
  type    = string
  default = "subnet-04f7f972685ea3189"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "public_ip" {
  type        = bool
  default     = true
  description = "this for public ip"
}

variable "vpc_id" {
  type    = string
  default = "vpc-05be01c3323d1b980"
}