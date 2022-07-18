

# Create intenet gateway --name tgw66igw

resource "aws_internet_gateway" "tgw66igw" {
  vpc_id = aws_vpc.tgw66vpc.id

  tags = {
    Name = var.aws_igw_name                       ## variable
  }
}