#!/bin/bash

# Install Java
sudo apt-get update
sudo apt-get install -y default-jre

# Install Tomcat
sudo apt-get install -y tomcat9

# Start Tomcat and set it to start on boot
sudo systemctl enable tomcat9
sudo systemctl start tomcat9

# Install CodeDeploy agent
sudo apt-get update
sudo apt-get install -y ruby-full wget
cd /home/ubuntu
wget https://aws-codedeploy-ap-south-1.s3.ap-south-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent start
