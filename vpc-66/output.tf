output vpc_id {
  description = "VPC ID"
  value       = aws_vpc.tgw66vpc.id
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
  value       = [aws_security_group.tgw66sg.id]
}

# output subnet_id {
#   description = "description"
#   value       = aws_subnet.tgw66sn1.id
# }

output subnet_id_public {
  description = "description"
  value       = aws_subnet.tgw66sn1.id
}


output subnet_id_private {
  description = "description"
  value       = aws_subnet.tgw66sn2.id
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
  description = "availability_zones_public subnet tgw66sn1"
  value       = var.availability_zones_public
}

output az_private {
  description = "availability_zones_private subnet tgw66sn1"
  value       = var.availability_zones_private
}

output aws_route_table-tgw66rtb-id {
  description = "aws_route_table.tgw66rtb.id"
  value       = aws_route_table.tgw66rtb.id
}

################ New OutPut ###############

output aws_internet_gateway-tgw66igw {
  description = "aws_internet_gateway.tgw66igw"
  value       = aws_internet_gateway.tgw66igw
}


output aws_security_group-tgw66sg {
  description = "aws_security_group.tgw66sg"
  value       = aws_security_group.tgw66sg
}


