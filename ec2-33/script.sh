!/bin/bash
cd ~
sudo yum update -y
sudo amazon-linux-extras install docker
# Start Docker service
sudo service docker start

echo -e "FROM nginx \nADD http://syjhub.com/docker/data3.tar.gz /data3.tar.gz \nRUN tar -vxf data3.tar.gz \nRUN cp -r ./data3/* /usr/share/nginx/html/ " > Dockerfile

sudo docker build --tag nginx-boots .
sudo docker run -d -p 80:80 --name nginx-bas nginx-boots


