variable "project_name" {
    type = string
    default = "ecs-blueprint"
}

variable "environment" {
    type = string
    default = "dev"
}

variable "dev_vpc_cidr" {
    type = string
}

variable "dev_public_subnets" {
    type = list(string)
}

variable "dev_private_subnets" {
    type = list(string)
}