output "vpc_id" {
  value       = aws_vpc.main.id
  description = "ဆောက်လိုက်သော VPC ရဲ့ ID"
}

output "public_subnet_ids" {
  value       = aws_subnet.public[*].id
  description = "Public Subnet ID များစာရင်း (ALB အတွက် သုံးရန်)"
}

output "private_subnet_ids" {
  value       = aws_subnet.private[*].id
  description = "Private Subnet ID များစာရင်း (ECS Container များအတွက် သုံးရန်)"
}