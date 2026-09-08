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

variable "instance_count" {
  type = number
  default = 1
}

variable "public_ip" {
  type = bool
  default = true
  description = "this for public ip"
}