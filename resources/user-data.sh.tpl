#!/bin/bash

# Update
apt-get update -y

# Install apache
apt-get install unzip awscli -y
apt-get install apache2 -y

# start service
systemctl start apache2.service

# Create a sample content in apache
cd /var/www/html
echo "<html><head><title>My Terraform Class</title></head><body>It works!</body></html>" > index.html