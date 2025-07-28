terraform {
  required_version = ">= 1.12.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_budgets_budget" "monthly_budget" {
  name         = "aws-monthly-cost-cap"
  budget_type  = "COST"
  time_unit    = "MONTHLY"
  limit_amount = "50"
  limit_unit   = "USD"

  notification {
    comparison_operator        = "GREATER_THAN"
    notification_type          = "FORECASTED"
    threshold                  = 75
    threshold_type             = "PERCENTAGE"
    subscriber_email_addresses = ["silva.dom743@gmail.com"]
  }

  tags = {
    name        = "aws-monthly-cost-cap"
    purpose     = "monthly cost budget alert"
    environment = "development"
  }

}