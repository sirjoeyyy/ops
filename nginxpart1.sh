#!/bin/bash

#! KM Sejoe & AC Ntini


sudo apt-get update 

sudo apt-get -y install nginx

systemctl is-active nginx

sudo systemctl start nginx
sudo systemctl stop nginx



ls
cd
sudo mkdir /var/www/html/labs 
ls-ld /var/www/html/labs


sudo chown (new ownwer):root /var/www/html/labs
ls -ld /var/www/html/labs 


ln -s /var/www/html/labs html
ls -l
cd html 
touch index.html
nano index.html


cat index.html
mkdir bin 
cd bin
touch websrv_coonfig_script.bash
ls -l
chmod u+x websrv_config_script.bash
ls -l
./websrv_config_script.bash
nano websrv_config_script.bash

<html>
  <body>
    <pr>
    STUDENT INFORMATION
    Names:
    Student no:
    Coarse:
    </pr>
  </body>
</html>


