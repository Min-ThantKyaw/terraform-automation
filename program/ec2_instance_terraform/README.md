# EC2 Web Server with Terraform

Terraform configuration to provision an Amazon Linux 2 EC2 instance with Apache web server.

## Resources Created

- **EC2 Instance**: t3.micro running Amazon Linux 2
- **Security Group**: Allows HTTP (port 80) inbound, all outbound
- **Web Server**: Apache httpd with a simple "Hello from Terraform" page

## Prerequisites

- AWS CLI configured with profile `maungtharkyaw`
- Terraform installed

## Usage

```bash
# Initialize Terraform
terraform init

# Preview changes
terraform plan

# Deploy infrastructure
terraform apply

# Destroy infrastructure
terraform destroy
```

## Output

The public IP address of the EC2 instance is output after deployment. Access the web server at `http://<instance_ip>`.

## Region

Default region: `us-east-1`
