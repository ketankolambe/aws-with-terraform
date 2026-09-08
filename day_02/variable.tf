variable "ami_id" {
  type = string
  default = "ami-01a00762f46d584a1"
}

variable "subnet_id"{
    type = string
    default = "subnet-04f7f972685ea3189"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}