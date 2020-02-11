#!/bin/bash
yum install docker-ce -y
systemctl enable docker;systemctl restart docker
docker pull httpd:latest
docker run -d --name httpd 8081:80 httpd:latest

