#!/bin/sh

# Install SSH server capacity
sudo apt install openssh-server -y

# Security Features (adapted from Chris Titus Tech's security repo)
sudo apt install ufw fail2ban -y

sudo ufw limit 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 25565/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

sudo sysctl net.ipv4.conf.all.rp_filter
sudo sysctl -a --pattern 'net.ipv4.conf.(eth|wlan)0.arp'

sudo systemctl enable fail2ban
sudo systemctl start fail2ban
