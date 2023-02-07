variable "region_type" {
    description = "Name of an instance region"
    default = "us-east-1"
}

variable "ins_type" {
    type = string
    default = "t2.micro"
}

variable "ami_number" {
    description  = "Ami number of a virtual machine."
    default = "ami-00874d747dde814fa"
}

variable "vpc_name" {
    description = "The block defines the name of the custom VPC."
    default = "my_custom_vpc"
}

variable "vpc_cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "vpc_subnets" {
    type = string
    default = "10.0.1.0/24"
}