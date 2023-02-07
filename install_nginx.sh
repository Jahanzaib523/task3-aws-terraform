#! /bin/bash

#installs nginx server in ec2
sudo apt update -y
sudo apt install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx.service

#Prints the message.
echo "<h1>Welcome to Nginx</h1>" | sudo tee /var/www/html/index.html
