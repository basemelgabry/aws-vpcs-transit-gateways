# Create many sub net
# subnet 1 = 33sn1
#cidr_block = "10.11.1.0/24"
# added to vpc = 33vpc
# tag = 33sn1 , public
# ======================
# subnet 2 = 33sn2
#cidr_block = "10.11.2.0/24"
# added to vpc = 33vpc
# tag = 33sn2 , private

resource "aws_subnet" "tgw33sn1" {
  vpc_id     = aws_vpc.tgw33vpc.id
  cidr_block = var.subnet_public_cidr_block
  availability_zone = var.availability_zones_public

  tags = {
    TagName = "tgw33sn1"
    Name = "public"
  }
}


 resource "aws_subnet" "tgw33sn2" {
    vpc_id     = aws_vpc.tgw33vpc.id
    cidr_block = var.subnet_private_cidr_block
    availability_zone = var.availability_zones_private

    tags = {
      TagName = "tgw33sn2"
      Name = "private"
    }
  }