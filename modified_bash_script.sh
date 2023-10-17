#!/bin/bash
#Sinenhlanhla Mlotshwa & Thokozane Ramongana
#Variable Declaration
dir="labs" #variable "labs" created
link="html" #symbolic link variable
page="index.html" #html variable
path="/var/www/html"
user="student"
home="/home/student"
echo"NGINX CONFIG SCRIPT"
echo"-------------------"
echo"Script Starting"
sleep 1 #delays jump to next line

rn -rvf $path/$dir #remove existing path & dir
rn -rvf $home/$link #remove existing home & link

if [ "'systemctl is-active nginx 2> /dev/null'" = "active" ]
then
        echo "NGINX service running, continue with configuration..."
        sleep 1
        echo "Creating directory $dir"
        sleep 1
       
        mkdir $path/$dir
        if [-d $path/$dir]
        then 
                echo"Changing Ownership of $dir to $USER"
        else 
                echo"Did not find directory $path/$dir"
                echo"Exiting Script..."
                exit 1
        fi
        sleep 1
        echo "Changing ownership of $dir to $USER"
        sleep 1
        chown $USER:root $path/$dir
        echo "Creating symbolic link $home/$link"
        sleep 1
        ln -s $path/$dir $home/$link
        sleep 1

        if[-L $home/$link ]; then
        cd $home/$link
        echo "Creating test page $page"
        touch $page #displays html
        echo "Adding dummy content to $page"
        sleep 1
        echo "<html>" >> $page
        echo "<body>" >> $page
        echo "<h1>STUDENT INFORMATION</h1>" >> $page
        echo "<p>Names: Student no: Course:</p>" >> $page
        echo "</body>" >> $page
        echo "</html>" >> $page
        
        echo"Script has finished executing page"
        else
                echo"Symbolic link ($link) was not found!"
                echo"Script will now exit..."
                sleep 1
                exit 1

fi
        
        else 
                echo "NGINX service not running"
                echo "Exiting Script"
                exit 1 #exits script
fi

#End of Script
