terraform {
    backend "s3" {
      bucket = "bas-demobucket"
      key    = "demo/aws-infrastructure-s3-23622/vpc-resource-tgw33/terraform.tfstate"
      region = "us-east-1"
    }    
}
