# variable "ami" {
# 	default = "ami-0cff7528ff583bf9a"
# }

# variable "instance_type" {
#     description = "Instance type t2.micro"
#     type        = string                            # EX strung - number - bool - list - set - ,ap
#     default     = "t2.micro"                        # variable default volue 
# 	}

# variable "key_name" {
#     description = "KEY Name"
#     type        = string                          
#     default     = "BAS-key"

# }

# variable "enable_public_ip" {
#   description = "Enable  associate public IP address"
#   type        = bool
#   default     = true
# }

# variable "aws_instance_name" {
#     description = "AWS instance name"
#     type        = string                          
#     default     = "terraform-demo"
# }

############### VPV | tgw66vpc ###############

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.66.0.0/16"
}

variable "aws_vpc_name" {
    description = "AWS instance name"
    type        = string                          
    default     = "tgw66vpc"
}

##################### ING | tgw66igw ########################

variable "aws_igw_name" {
    description = "AWS instance name"
    type        = string                          
    default     = "tgw66igw" 
}

#####################  subnet | tgw66sn ##############

variable "subnet_public_cidr_block" {
  description = "subnet_public CIDR block for VPC"
  type        = string
  default     = "10.66.1.0/24"
}

variable "subnet_private_cidr_block" {
  description = "subnet_private CIDR block for VPC"
  type        = string
  default     = "10.66.2.0/24"
}


#################  Route Table #######################

variable "aws_route_table_name" {
    description = "AWS instance name"
    type        = string                          
    default     = "tgw66rtb"
}

variable "aws_route_destination_cidr_block" {
  description = "CIDR block for aws_route_destination_cidr_block"
  type        = string
  default     = "0.0.0.0/0"
}


################### Security group | tgw66sg #####################33

variable "aws_security_group_name" {
    description = "security group name"
    type        = string                          
    default     = "tgw66sg"
}

################# │ availability_zones |########

variable "availability_zones_public" {
    description = "availability_zones_public subnet tgw66sn1"
    type        = string                          
    default     = "us-east-1a"
}

variable "availability_zones_private" {
    description = "availability_zones_private subnet tgw66sn2"
    type        = string                          
    default     = "us-east-1b"
}