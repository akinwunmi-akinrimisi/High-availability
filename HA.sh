#!/bin/bash
sudo su
yum update -y
yum install -y httpd mysql
amazon-linux-extras install -y php7.2
systemctl start httpd
systemctl enable httpd
echo "Hello World from $(hostname -f)" > /var/www/html/index.html 
echo "Healthy" > /var/www/html/health.html
