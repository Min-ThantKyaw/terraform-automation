# Terraform Learning

## What is it?
Terraform is an infrastructure as code tool. It lets you describe infrastructure using configuration files instead of creating resources manually.

## Why does it exist?
Terraform exists to make infrastructure repeatable, version-controlled, and easier to manage. It helps avoid manual setup mistakes and makes it possible to recreate environments consistently.

## How does it work?
Terraform reads `.tf` files and compares the desired infrastructure with the current state.

Basic flow:

1. Write Terraform configuration files.
2. Run `terraform init` to initialize the project.
3. Run `terraform plan` to preview changes.
4. Run `terraform apply` to create or update resources.
5. Terraform records created resources in a state file.

Main concepts:

- Providers connect Terraform to platforms like AWS, Azure, Google Cloud, Docker, or local tools.
- Resources describe things Terraform should create or manage.
- Variables make configurations reusable.
- Outputs show useful values after Terraform runs.
- State tracks what Terraform manages.
