#!/bin/bash

dir="labs" #variable "labs" created
link="html" #symbolic link variable
page="index.html" #html variable
echo"NGINX CONFIG SCRIPT"
echo"##################"
echo"Script Starting"
sleep 1 #delays jump to next line

if (systemctl is-active nginx)
then
        echo "NGINX service running, continue with configuration..."
        sleep 1
        echo "Creating directory $dir"
        sleep 1
        mkdir /var/www/html/$dir
        echo "Changing ownership of $dir to $USER"
        sleep 1
        chown $USER:root /var/www/html/labs
        echo "Creating symbolic link"
        sleep 1
        ln -s /var/www/html/$dir $link
        echo "Creating test page $page"
        sleep 1
        echo "Adding dummy content to $page"
        sleep 1
        echo "<html><body><br><h1>STUDENT INFORMATION</h1><br><p>Names:<br>Student no:<br>Course:<br></p></body></html>" >> $page
        
                
                  
                  
                  
                  
                  
                  
               
           
        
        
else 
        echo "NGINX service not running"
        echo "Exiting Script"
        exit 1 #exits script
fi
