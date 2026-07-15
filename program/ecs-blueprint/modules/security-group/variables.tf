variable "project_name" {
  description = "Project Name"
  type = string
}

variable "environment" {
  description = "Environment name"
  type = string
}

variable "vpc_id" {
  description = "VPC id to create security group"
  type = string
}
