//HOW TO INTALL NGINX
sudo apt-get update 

sudo apt-get -y intall nginx

systemctl is-active nginx

sudo systemctl start nginx
sudo systemctl stop nginx


//HOW TO CREATE DIRECTORY 
ls
cd
sudo mkdir /var/www/html/labs 
ls-ld

//HOW TO CHANGE OWNERSHIP
sudo chown (new ownwer):root /var/www/html/labs
ls-ld /var/www/html/labs

//HOW TO CREATE A SYMBOLIC LINK
ln-s
ls-l
cd html 

//HOW TO CREATE AN INDEX.HTML FILE
nano index 



