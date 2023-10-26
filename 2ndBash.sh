#!/bin/bash
# Sinenhlanhla Mlotshwa & Thokozane Ramongana

# Variable Declaration
dir="labs"  
link="html"
page="index.html" 
path="/var/www/html"
user="azureuser"
home="/home/azureuser"

echo "NGINX CONFIG SCRIPT"
echo "-------------------"
echo "Script Starting"
sleep 1  # Delays execution for 1 second

# Remove existing directories and symbolic links if they exist
rm -rvf "$path/$dir"
rm -rvf "$home/$link"



if [ "$(systemctl is-active nginx 2> /dev/null)" = "active" ]; then
    echo "NGINX service running, continue with configuration..."
    sleep 1
    echo "Creating directory $dir"
    sleep 1

    mkdir -p "$path/$dir"  #  -p to create parent directories if they don't exist
    if [ -d "$path/$dir" ]; then  
        echo "Changing Ownership $dir to $user"  
        sleep 1
        chown "$user:root" "$path/$dir"
        echo "Creating symbolic link $home/$link"
        sleep 1
        ln -s "$path/$dir" "$home/$link"
    else
        echo "Did not find directory $path/$dir"
        echo "Exiting Script..."
        exit 1
    fi
else
    echo "NGINX service is not running"
    echo "Exiting Script"
    exit 1
fi
