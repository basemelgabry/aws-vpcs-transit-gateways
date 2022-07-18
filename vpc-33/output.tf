output vpc_id {
  description = "VPC ID"
  value       = aws_vpc.tgw33vpc.id
}

output vpc_name {
  description = "VPC name"
  value       = var.aws_vpc_name
}

output vpc_cidr_bock {
  description = "VPC CIDR Block of VPC"
  value       = var.vpc_cidr_block
}

output vpc_security_group_id {
  description = "description"
  value       = [aws_security_group.tgw33sg.id]
}

# output subnet_id {
#   description = "description"
#   value       = aws_subnet.tgw33sn1.id
# }

output subnet_id_public {
  description = "description"
  value       = aws_subnet.tgw33sn1.id
}


output subnet_id_private {
  description = "description"
  value       = aws_subnet.tgw33sn2.id
}

output subnet_public_cidr_block {
  description = "Subnet public CIDR Block of VPC"
  value       = var.subnet_public_cidr_block
}

output subnet_private_cidr_block {
  description = "Subnet public CIDR Block of VPC"
  value       = var.subnet_private_cidr_block
}


output az_public {
  description = "availability_zones_public subnet tgw33sn1"
  value       = var.availability_zones_public
}

output az_private {
  description = "availability_zones_private subnet tgw33sn1"
  value       = var.availability_zones_private
}

output aws_route_table-tgw633rtb-id {
  description = "aws_route_table.tgw33rtb.id"
  value       = aws_route_table.tgw33rtb.id
}

################ New OutPut ###############

output aws_internet_gateway-tgw33igw {
  description = "aws_internet_gateway.tgw33igw"
  value       = aws_internet_gateway.tgw33igw
}


output aws_security_group-tgw33sg {
  description = "aws_security_group.tgw33sg"
  value       = aws_security_group.tgw33sg
}
