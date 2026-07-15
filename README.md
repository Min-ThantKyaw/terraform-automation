# Terraform Learning & Projects

This repository contains Terraform learning notes and practical implementations.

## Structure

```
terraform/
├── notes/          # Learning notes and documentation
│   └── learning.md # Terraform fundamentals
└── program/        # Terraform projects
    └── ec2_instance_terraform/  # EC2 web server deployment
```

## Projects

### EC2 Instance with Web Server
Location: `program/ec2_instance_terraform/`

Provisions an Amazon Linux 2 EC2 instance with Apache web server using Terraform.

**Resources:**
- t3.micro EC2 instance
- Security group (HTTP access)
- Apache httpd web server

**Prerequisites:**
- AWS CLI configured with profile `maungtharkyaw`
- Terraform installed

**Quick Start:**
```bash
cd program/ec2_instance_terraform
terraform init
terraform apply
```

## Learning Notes

See `notes/learning.md` for Terraform fundamentals including:
- Core concepts (providers, resources, state)
- Basic workflow
- Common commands
