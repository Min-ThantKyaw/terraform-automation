variable "project_name" {
    type = string
    description = "The name of the project"
}

variable "environment" {
    type = string
    description = "The environment of the project"
}

variable "vpc_cidr" {
    type = string
    description = "The CIDR block for the VPC"
}

variable "public_subnet_cidrs" {
    type = list(string)
    description = "The CIDR blocks for the public subnets"
}

variable "private_subnet_cidrs" {
    type = list(string)
    description = "The CIDR blocks for the private subnets"
}