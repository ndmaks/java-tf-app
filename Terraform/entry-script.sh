#!/bin/bash
sudo yum update -y && sudo yum install -y docker
#sudo service docker start
sudo systemctl start docker 
#sudo groupadd docker
#sudo usermod -a -G docker jenkins
#sudo service jenkins restart
#sudo reboot
sudo usermod -aG docker ec2-user
su - ec2-user
chmod 666 /var/run/docker.sock
# install docker-compose 
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose