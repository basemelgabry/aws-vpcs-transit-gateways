
terraform {
  required_version = "1.2.5"  # 1.1.5 > 1.2.5
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.70.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = var.access_key_var              # our-access-key
  secret_key = var.secret_key_var              # our-secret-key
}

