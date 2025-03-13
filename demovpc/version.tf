# Terraform Block
terraform {
  required_version = "~> 1.20.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.76.0"
    }
  }
}
