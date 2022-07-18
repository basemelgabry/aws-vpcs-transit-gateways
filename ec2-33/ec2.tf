
resource "aws_instance" "ec2_tgw33_public"{                          # hardcoded
  ami = "${var.ami}"                                                ## Amazon Linux 
  instance_type = "${var.instance_type}"                           # variable
  vpc_security_group_ids = data.terraform_remote_state.basnetwork.outputs.vpc_security_group_id     
  subnet_id = data.terraform_remote_state.basnetwork.outputs.subnet_id_public #aws_subnet.task3-sn1-pb.id 
  key_name = "${var.key_name}"
  associate_public_ip_address = var.enable_public_ip               # variable
  
  provisioner "local-exec" {
        command = "echo ${self.public_ip} > public.ip_public.txt"   
    }
/*    
  connection {
        type        = "ssh"
        host        = self.public_ip
        user = "${var.username}"
        # user        = "ec2-user"
        private_key = file("BAS-key.pem")
        #private_key = "${file("${var.key_path}/${var.private_key_name}")}"
        #private_key = file("/c/Users/Me/Desktop/EC2/keys/BAS-key.pem")
    }     


  provisioner "remote-exec" {
    connection {
                  type        = "ssh"
                  host        = self.public_ip
                  user        = "${var.username}"
                  #user        = "ec2-user"
                  #private_key = "${file("${var.key_path}/${var.private_key_name}")}"
                  privete_key = file("BAS-key.pem")
                  #private_key = file("/c/Users/Me/Desktop/EC2/keys/BAS-key.pem")
                  #privete_key = file("C:\Users\Me\Desktop\EC2\keys\BAS-key.pem")
            } 
  inline = [<<EOF
                echo "#!/bin/bash" >> dockerscript.sh
                echo "cd ~" >> dockerscript.sh
                echo "sudo yum update -y" >> dockerscript.sh
                echo "sudo amazon-linux-extras install docker -y" >> dockerscript.sh
                echo " # Start Docker service" >> dockerscript.sh
                echo "sudo service docker start" >> dockerscript.sh
                echo "echo -e 'FROM nginx \nADD http://syjhub.com/docker/data3.tar.gz /data3.tar.gz \nRUN tar -vxf data3.tar.gz \nRUN cp -r ./data3/* /usr/share/nginx/html/ ' > Dockerfile" >> dockerscript.sh
                echo "docker build --tag nginx-boots ." >> dockerscript.sh
                echo "docker run -d -p 80:80 --name nginx-bas nginx-boots" >> dockerscript.sh
    EOF
  ]
}

  provisioner "remote-exec" {
    inline = [
      "pwd",
      "cd ~",
      "sudo chmod +x $PWD/*",
      "sudo sh $PWD/*",
      
    ]
  }
*/
  #user_data = file("nginx.sh")
  # aws s3 cp s3://ccccccccc /var/www/html
  tags = {
    Name = var.aws_instance_name_public                                   # variable
  }
}



# ============ VPC ====================
# Vpc in state file in s3
data "terraform_remote_state" "basnetwork" {
#data "aws_vpc" "bass3vpc" {
  backend = "s3"
  config = {
    bucket = "${var.s3_bucket}"
    key    = "${var.s3_key}"
    region = "${var.s3_region}"
  }
    
}

