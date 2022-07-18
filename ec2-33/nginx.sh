#!/bin/bash -v
sudo yum update -y
#sudo yum install -y nginx > /tmp/nginx.log
sudo amazon-linux-extras install nginx1 -y
# make sure nginx is started
sudo service nginx start
sudo systemctl enable nginx
sudo curl -L http://syjhub.com/docker/data3.tar.gz > data3.tar.gz
sudo tar -vxf data3.tar.gz
sudo cp -r ./data3/* /usr/share/nginx/html/