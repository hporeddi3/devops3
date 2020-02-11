#!/bin/bash
curl -fsSL https://get.docker.com | sh;
systemctl enable docker;systemctl restart docker
docker pull httpd:latest
docker run -d --name httpd 8081:80 httpd:latest

