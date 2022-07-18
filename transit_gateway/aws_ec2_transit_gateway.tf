# Manages an EC2 Transit Gateway.

resource "aws_ec2_transit_gateway" "tgw3366" {
  description = "tgw3366"
  tags = {
    Name = "tgw3366"                                   # variable
  }
}
resource "aws_ec2_transit_gateway_route_table" "tgw3366et" {
  transit_gateway_id = aws_ec2_transit_gateway.tgw3366.id
}

######################## VPC & EC2s (33) ######################################
resource "aws_ec2_transit_gateway_vpc_attachment" "tgw33attach" {
  subnet_ids         = data.aws_subnet_ids.subnets33.ids #[aws_subnet.example.id]
  transit_gateway_id = aws_ec2_transit_gateway.tgw3366.id
  vpc_id             = data.terraform_remote_state.network33.outputs.vpc_id #aws_vpc.main.id
}

# Vpc in state file in s3 - 33
data "terraform_remote_state" "network33" {
#data "aws_vpc" "bass3vpc" {
  backend = "s3"
  config = {
    bucket = "bas-demobucket"
    key    = "demo/aws-infrastructure-s3-23622/vpc-resource-tgw33/terraform.tfstate"
    region = "us-east-1"
  }
}

# resource "aws_route_table" "tgw33rtb" {
#   vpc_id = data.terraform_remote_state.network33.outputs.vpc_id #aws_vpc.main.id
#   route {
#     cidr_block = "10.66.0.0/16"  # for VPC 66
#     transit_gateway_id = aws_ec2_transit_gateway.tgw3366.id
#   }

#   tags = {
#     Name = "tgw33rtb"
#   }
# }

# Add and remove routes from a route table in terraform
resource "aws_route" "r33" {
  route_table_id            = data.terraform_remote_state.network66.outputs.aws_route_table-tgw33rtb-id
  destination_cidr_block    = "10.66.0.0/16"
  # vpc_peering_connection_id = "pcx-45ff3dc1"
  # depends_on                = [aws_route_table.testing]
}


######################## VPC & EC2s (66) ######################################
resource "aws_ec2_transit_gateway_vpc_attachment" "tgw66attach" {
  subnet_ids         = data.aws_subnet_ids.subnets66.ids #[aws_subnet.example.id]
  transit_gateway_id = aws_ec2_transit_gateway.tgw3366.id
  vpc_id             = data.terraform_remote_state.network66.outputs.vpc_id #aws_vpc.main.id
}

# Vpc in state file in s3 - 33
data "terraform_remote_state" "network66" {
#data "aws_vpc" "bass3vpc" {
  backend = "s3"
  config = {
    bucket = "bas-demobucket"
    key    = "demo/aws-infrastructure-s3-23622/vpc-resource-tgw66/terraform.tfstate"
    region = "us-east-1"
  }
}

# resource "aws_route_table" "tgw66rtb" {
#   vpc_id = data.terraform_remote_state.network66.outputs.vpc_id #aws_vpc.main.id
#   route {
#     cidr_block = "10.33.0.0/16"  # for VPC 66
#     transit_gateway_id = aws_ec2_transit_gateway.tgw3366.id
#   }

#   tags = {
#     Name = "tgw66rtb"
#   }
# }


# Add and remove routes from a route table in terraform
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route

resource "aws_route" "r66" {
  route_table_id            = data.terraform_remote_state.network66.outputs.aws_route_table-tgw66rtb-id
  destination_cidr_block    = "10.33.0.0/16"
  # vpc_peering_connection_id = "pcx-45ff3dc1"
  # depends_on                = [aws_route_table.testing]
}

