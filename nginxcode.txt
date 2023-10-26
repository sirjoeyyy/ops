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

# Edit an index.html file using a text editor (e.g., nano)
sudo nano index.html

<html>
  <body>
    <p>
    STUDENT INFORMATION
    Names:
    Student no:
    Course:
    </p>
  </body>
</html>

#displays html code
cat index.html 

# Create a directory at /bin
sudo mkdir bin 

# Navigate to the /bin directory
cd bin

#creating bash script file
sudo touch websrv_config_script.bash 

# List the websrv_config_script.bash target
ls -l

#make file executable
sudo chmod u+x websrv_config_script.bash 

# List the executable file and its target
ls -l

#Paste/Create bash script
sudo nano websrv_config_script.bash 

#Execute script
sudo ./websrv_config_script.bash 

#end of part 1




