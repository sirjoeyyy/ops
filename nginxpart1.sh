#!/bin/bash
#! KM Sejoe & AC Ntini


sudo apt-get update # Update package information to ensure the latest packages are available.

sudo apt-get -y install nginx

systemctl is-active nginx

sudo systemctl start nginx
sudo systemctl stop nginx



ls
cd /var
sudo mkdir /var/www/html/labs 
ls -ld /var/www/html/labs


sudo chown (new ownwer):root /var/www/html/labs
ls -ld /var/www/html/labs (


ln -s /var/www/html/labs html
ls -l
cd html 
sudo touch index.html #creating html file
sudo nano index.html


cat index.html #displays html
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


