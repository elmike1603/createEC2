#!/bin/bash
sudo apt update && upgrade
sudo apt install -y python3.8
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
#Install Jenkins
sudo apt-get install -y openjdk-8-jre
sudo apt-get install -y jenkins
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl status jenkins
#Install Ansible
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible
#Install Git and Maven
sudo apt install -y maven
sudo apt install -y git
