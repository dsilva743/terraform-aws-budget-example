# Terraform AWS Budget Example

This repository contains a simple Terraform configuration that creates an AWS Cost Budget with email notifications.  


## What It Does
- Creates a monthly AWS Cost Budget capped at **$50 USD**
- Sends an **email alert** when the **forecasted cost** exceeds **75%** of the budget


## Prerequisites
- [Terraform](https://developer.hashicorp.com/terraform/downloads) `>= 1.12.0`
- AWS CLI configured with credentials  
- An active AWS account


## Usage
Clone the repository and run:
```bash
terraform init
terraform plan
terraform apply
