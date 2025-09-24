#!/bin/bash
# User & group management script with sudo

echo "Creating group 'devops'..."
sudo groupadd devops

echo "Creating users..."
sudo useradd -m ansible
sudo useradd -m jenkins
sudo useradd -m aws

echo "Assigning users to devops group..."
sudo usermod -aG devops ansible
sudo usermod -aG devops jenkins
sudo usermod -aG devops aws

echo "Setting directory permissions..."
sudo mkdir -p /opt/devopsdir
sudo chown -R ansible:devops /opt/devopsdir
sudo chmod 770 /opt/devopsdir

echo "User & group setup complete! ✅"
