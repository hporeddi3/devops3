#!/bin/bash

sudo tee /etc/yum.repos.d/docker.repo <<-'EOF'
 [dockerrepo]
 name=Docker Repository
 baseurl=https://yum.dockerproject.org/repo/main/centos/7/
 enabled=1
 gpgcheck=1
 gpgkey=https://yum.dockerproject.org/gpg
 EOF
sudo yum install docker-engine -y;

systemctl enable docker;systemctl restart docker
docker pull httpd:latest
docker run -d --name httpd 8081:80 httpd:latest

