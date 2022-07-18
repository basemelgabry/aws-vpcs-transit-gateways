variable "ami" {
	default = "ami-0cff7528ff583bf9a"
}

variable "instance_type" {
    description = "Instance type t2.micro"
    type        = string                            # EX strung - number - bool - list - set - ,ap
    default     = "t2.micro"                        # variable default volue 
	}

variable "key_name" {
    description = "KEY Name"
    type        = string                          
    default     = "BAS-key"

}

variable "enable_public_ip" {
  description = "Enable  associate public IP address"
  type        = bool
  default     = true
}

variable "aws_instance_name_public" {
    description = "AWS instance name"
    type        = string                          
    default     = "ec2_tgw66_public"
}

variable "aws_instance_name_private" {
    description = "AWS instance name"
    type        = string                          
    default     = "ec2_tgw66_private"
}

################# AWS credentials  #######################

variable "access_key_var" {
    description = "AWS access key"
    type        = string                          
  #  default     = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    default     = ""
}

variable "secret_key_var" {
  description = "AWS secret_key "
  type        = string
  # default     = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  default     = ""

}

#========================== S3 ======================

variable "s3_bucket" {
    description = "s3 Bucket name"
    type        = string                          
    default     = "bas-demobucket"
}

variable "s3_key" {
    description = "s3 Bucket Key"
    type        = string                          
    default     = "demo/aws-infrastructure-s3-23622/vpc-resource-tgw66/terraform.tfstate"
}

variable "s3_region" {
    description = "s3 Bucket region"
    type        = string                          
    default     = "us-east-1"
}


#=================== username & private key = "${file("${var.key_path}/${var.private_key_name}")}"=================

variable "username" {
    description = "key path in my pc"
    type        = string                          
    default     = "ec2-user"
}


# variable "key_path" {
#     description = "key path in my pc"
#     type        = string                          
#     default     = "/Users/Me/Desktop/EC2/keys/.ssh"
#     #default     = "C:\Users\Me\Desktop\EC2\keys"
# }

# variable "private_key_name" {
#     description = "private key name my pc"
#     type        = string                          
#     default     = "BAS-key.pem"
# }


# variable "subnets" {
# 	type = list
# 	default = {
#         data.terraform_remote_state.basnetwork.outputs.subnet_id_public , 
#         data.terraform_remote_state.basnetwork.outputs.subnet_id_private
#     }
# }

# variable "azs" {
#     type = list(string)
# 	default = [ "us-east-1a", "us-east-1b" ]
# }