
resource "aws_instance" "ec2_tgw66_private"{                          # hardcoded
  ami = "${var.ami}"                                                ## Amazon Linux 
  instance_type = "${var.instance_type}"                           # variable
  vpc_security_group_ids = data.terraform_remote_state.basnetwork.outputs.vpc_security_group_id     
  subnet_id = data.terraform_remote_state.basnetwork.outputs.subnet_id_private #aws_subnet.task3-sn1-pb.id 


  key_name = "${var.key_name}"
  associate_public_ip_address = var.enable_public_ip               # variable

  provisioner "local-exec" {
        command = "echo ${self.public_ip} > public.ip_private.txt"   
    }
  
  # user_data = file("nginx.sh")
  tags = {
    Name = var.aws_instance_name_private                                   # variable
  }
}


