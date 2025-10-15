#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
echo "<h1>Welcome to the 3-Tier Web App</h1>" > /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd
