#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo service httpd start
sudo echo "<h3> This is patching of ec2 instance with application server </h3>" | sudo tee /var/www/html/index.html