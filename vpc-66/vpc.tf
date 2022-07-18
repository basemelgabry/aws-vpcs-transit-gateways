
# Create a VPC 

resource "aws_vpc" "tgw66vpc" {         # hardcoded
  cidr_block = var.vpc_cidr_block         # variable

  tags = {
    Name = var.aws_vpc_name               # variable
  }
}