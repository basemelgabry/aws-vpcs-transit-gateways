
# IP Target Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group
/* *********************************** OF
resource "aws_lb_target_group_attachment" "tf-lb-tg-attach-public" {
  target_group_arn = aws_lb_target_group.tf-lb-tg.arn
  target_id        = aws_instance.aws_instance_name_public.private_ip
  port             = 80
  availability_zone = "us-east-1a"
}
resource "aws_lb_target_group_attachment" "tf-lb-tg-attach-private" {
  target_group_arn = aws_lb_target_group.tf-lb-tg.arn
  target_id        = aws_instance.aws_instance_name_private.private_ip
  port             = 80
  availability_zone = "us-east-1b"
}


resource "aws_lb_target_group" "tf-lb-tg" {
  name        = "tf-lb-tg"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = data.terraform_remote_state.basnetwork.outputs.vpc_id #aws_vpc.main.id

  health_check {
    port     = 80
    protocol = "HTTP"
  }
}

#resource "aws_vpc" "main" {
#  cidr_block = data.terraform_remote_state.basnetwork.outputs.vpc_cidr_bock #"10.0.0.0/16"
#}


resource "aws_lb" "Baslb" {
  name               = "Baslb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = data.terraform_remote_state.basnetwork.outputs.vpc_security_group_id 
  #subnets            = data.terraform_remote_state.basnetwork.outputs.subnet_id*.id #[for subnet in aws_subnet.public : subnet.id]
  subnets            = data.aws_subnet_ids.subnets.ids
  # availability_zones = [ "us-east-1a", "us-east-1b" ] # var.azs

  enable_deletion_protection = false

#   access_logs {
#     bucket  = aws_s3_bucket.lb_logs.bucket
#     prefix  = "test-lb"
#     enabled = true
#   }

  tags = {
    Name = "Baslb"
  }
}



resource "aws_lb_listener" "example" {
  load_balancer_arn = aws_lb.Baslb.arn
  port              = "80"
  protocol          = "HTTP"
  #ssl_policy        = "ELBSecurityPolicy-2016-08"
  #certificate_arn   = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tf-lb-tg.arn
  }
}

*/