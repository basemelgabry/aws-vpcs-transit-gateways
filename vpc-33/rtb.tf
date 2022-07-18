
#################  Route Table #######################

resource "aws_route_table" "tgw33rtb" {
  vpc_id = aws_vpc.tgw33vpc.id


  tags = {
    Name = var.aws_route_table_name
  }
}

################# Routes in Route Table #######################

resource "aws_route" "way-to-igw" {
  
  route_table_id         = "${aws_route_table.tgw33rtb.id}"
  destination_cidr_block = var.aws_route_destination_cidr_block                                  # variable
  gateway_id             = "${aws_internet_gateway.tgw33igw.id}"

}

################# Subnet Associations with Route Table #######################

resource "aws_route_table_association" "a" {          # name for aws_route_table_association = a
  subnet_id      = aws_subnet.tgw33sn1.id
  route_table_id = aws_route_table.tgw33rtb.id
}


resource "aws_route_table_association" "b" {          # name for aws_route_table_association = a
   subnet_id      = aws_subnet.tgw33sn2.id
   route_table_id = aws_route_table.tgw33rtb.id
 }


