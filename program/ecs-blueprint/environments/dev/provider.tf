#testing
terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

terraform {
    backend "s3" {
        bucket = "mtk-terraform-state-bucket"
        key    = "dev/terraform.tfstate"
        region = "us-east-1"
        encrypt = true
    }
}

provider "aws" {
    region = "ap-southeast-1"

    default_tags {
        tags = {
            Environment = "dev"
            ManagedBy = "Terraform"
            Project = "ecs-blueprint"
        }
    }
}