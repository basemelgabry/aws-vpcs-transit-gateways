terraform {
    backend "s3" {
      bucket = "bas-demobucket"
      key    = "demo/aws-infrastructure-s3-23622/ec2-resource-tgw66/terraform.tfstate"
      region = "us-east-1"
    }    
}