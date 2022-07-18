

# Create intenet gateway --name tgw33igw

resource "aws_internet_gateway" "tgw33igw" {
  vpc_id = aws_vpc.tgw33vpc.id

  tags = {
    Name = var.aws_igw_name                       ## variable
  }
}