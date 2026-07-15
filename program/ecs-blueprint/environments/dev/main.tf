module "dev_vpc" {
    source = "../../modules/vpc"

    project_name = var.project_name
    environment = var.environment
    vpc_cidr = var.dev_vpc_cidr
    public_subnet_cidrs = var.dev_public_subnets
    private_subnet_cidrs = var.dev_private_subnets
}

module "dev_alb" {
    source = "../../modules/alb"

    project_name = var.project_name
    environment = var.environment
    vpc_id = module.dev_vpc.vpc_id
    public_subnet_ids = module.dev_vpc.public_subnet_ids
}

# output "website_url" {
#     value = module.dev_alb.alb_dns_name
# }