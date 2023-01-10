#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install ufw -y
sudo ufw status
sudo ufw enable

sudo ufw default deny incoming -y
sudo ufw default allow outgoing -y
sudo ufw allow 22/tcp
sudo ufw allow 443/tcp
sudo ufw allow 80/tcp

