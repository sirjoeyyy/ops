#!/bin/bash
#! KM Sejoe & AC Ntini

# Update package information to ensure the latest packages are available.
sudo apt-get update # Update package information to ensure the latest packages are available.

# Install Nginx
sudo apt-get -y install nginx

# Check if Nginx is active
systemctl is-active nginx

# Start Nginx
sudo systemctl start nginx

# Stop Nginx
sudo systemctl stop nginx

# Create a directory at /var/www/html/labs
sudo mkdir /var/www/html/labs 

# List the contents of the /var/www/html directory
ls -ld /var/www/html/labs

# Change ownership of the /var/www/html/labs directory to a new owner (replace <new_owner> with the actual owner)
sudo chown <new_owner>:root /var/www/html/labs

# List the contents and permissions of the /var/www/html/labs directory
ls -ld /var/www/html/labs 

# Create a symbolic link to the /var/www/html/labs directory
ln -s /var/www/html/labs html

# List the symbolic link and its target
ls -l /var/www/html/labs html

# Navigate to the /var/www/html directory
cd /var/www/html 

#creating html file
sudo touch index.html 

#Edit html file
sudo nano index.html

#displays html code
cat index.html 


sudo mkdir bin 
cd bin
sudo touch websrv_config_script.bash #create bash script file
ls -l
sudo chmod u+x websrv_config_script.bash #make file executable
ls -l
sudo ./websrv_config_script.bash #name file, also used as shortcut link to execute script
sudo nano websrv_config_script.bash #paste/create bash script

<html>
  <body>
    <pr>
    STUDENT INFORMATION
    Names:
    Student no:
    Course:
    </pr>
  </body>
</html>


