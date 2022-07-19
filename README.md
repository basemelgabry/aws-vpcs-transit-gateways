# AWS infrastructure + EC2s + Transit Gateways
Create multi VPCs with EC2 - and use Transit gateways to connection 

> git clone https://github.com/basemelgabry/aws-vpcs-transit-gateways.git

## Create VPCs
# Create Vpc "33"

> cd vpc-33

> terraform init

> terraform plan

> terraform apply -auto-approve

# output
- VPC – RT – SG – IGW - 2 SUPNETS (different AZ)
- terraform.tfstate in backend "s3"

# Create Vpc "66"

> cd vpc-66

> terraform init

> terraform plan

> terraform apply -auto-approve

# output
- VPC – RT – SG – IGW - 2 SUPNETS (different AZ)
- terraform.tfstate in backend "s3"

## Create EC2s
# Create EC2 "33"

> cd ec2-33

> terraform init 

> terraform plan

> terraform apply -auto-approve

# Create EC2 "66"

> cd ec2-66

> terraform init

> terraform plan

> terraform apply -auto-approve


===========================================

# Craete Transit Gateways

> cd transit_gateway

> terraform init 

> terraform plan

> terraform apply -auto-approve


