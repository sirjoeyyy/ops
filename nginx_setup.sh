#!/bin/bash
sudo apt-get update
sudo apt-get -y install nginx
systemctl is-active nginx
sudo systemctl start nginx
sudo systemctl stop nginx
sudo mkdir -p /var/www/html/labs
ls -ld /var/www/html
sudo chown <new_owner>:root /var/www/html/labs
ls -ld /var/www/html/labs
ln -s /var/www/html/labs /path/to/symlink
ls -l /path/to/symlink
cd /var/www/html
