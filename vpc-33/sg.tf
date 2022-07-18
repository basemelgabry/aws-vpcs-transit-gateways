# Security Group
resource "aws_security_group" "tgw33sg" {
  name        = "tgw33sg"
  description = "Allow SSH & http & https (22 - 80 - 443) inbound traffic"
  vpc_id      = aws_vpc.tgw33vpc.id

  ingress {
    description      = "SSH & http & https - VPC"
    from_port        = 22
    to_port          = 8888
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.aws_security_group_name                # variable
  }
}