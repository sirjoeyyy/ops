#!/bin/bash
# Bash script to install Nginx, create directories, change ownership, and create a symbolic link and an index.html file.

# Update package information to ensure the latest packages are available.
sudo apt-get update

# Install Nginx
sudo apt-get -y install nginx

# Check if Nginx is active
systemctl is-active nginx

# Start Nginx
sudo systemctl start nginx

# Stop Nginx
sudo systemctl stop nginx

# Create a directory at /var/www/html/labs
sudo mkdir -p /var/www/html/labs

# List the contents of the /var/www/html directory
ls -ld /var/www/html

# Change ownership of the /var/www/html/labs directory to a new owner (replace <new_owner> with the actual owner)
sudo chown <new_owner>:root /var/www/html/labs

# List the contents and permissions of the /var/www/html/labs directory
ls -ld /var/www/html/labs

# Create a symbolic link to the /var/www/html/labs directory
ln -s /var/www/html/labs html <<what ran on my side>>>


# List the symbolic link and its target
ls -l /var/www/html/labs html <<<ls: cannot access '/path/to/symlink': No such file or directory>>>


# Navigate to the /var/www/html directory
cd /var/www/html

# Create an index.html file using a text editor (e.g., nano)
nano index.html
