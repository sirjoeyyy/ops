#!/bin/bash
echo "Sinenhlanhla Mlotshwa & Thokozane Ramongana"

# Variable Declaration
dir="labs"  
link="html"
page="index.html" 
path="/var/www/html"
user="azureuser"
home="/home/azureuser"

echo "------------------------"
echo "  NGINX CONFIG SCRIPT "
echo "------------------------"
echo "Script Starting..............."
sleep 1 

# Remove existing directories and symbolic links if they exist
rm -rvf "$path/$dir"
rm -rvf "$home/$link"



if [ "$(systemctl is-active nginx 2> /dev/null)" = "active" ]; then
    echo "NGINX service running, continuing with configuration..."
    sleep 1
    echo "Creating directory $dir...."
    sleep 1

    mkdir -p "$path/$dir"  #  -p to create parent directories if they don't exist
    if [ -d "$path/$dir" ]; then  
        echo "Changing Ownership $dir to $user...."  
        sleep 1
        chown "$user:root" "$path/$dir"
        echo "Creating symbolic link $home/$link...."
        sleep 1
        ln -s "$path/$dir" "$home/$link"
    else
        echo "Did not find directory $path/$dir"
        echo "Exiting Script..."
        exit 1
    fi
sleep 1

if [ -L "$home/$link" ]; then
    cd "$home/$link"
    echo "Creating test page $page...."
    touch "$page"  # Added double quotes around the variable
    echo "Adding dummy content to $page...."
    sleep 1
    echo "<html>" >> "$page"
    echo "<body>" >> "$page"
    echo "<h1>STUDENT INFORMATION</h1>" >> "$page"
    echo "<p>Names: Student no: Course:</p>" >> "$page"
    echo "</body>" >> "$page"
    echo "</html>" >> "$page"

    echo "Script has finished executing page!"
else
    echo "Symbolic link ($link) was not found!"
    echo "Script will now exit..."
    sleep 1
    exit 1
fi
else
    echo "NGINX service is not running"
    echo "Exiting Script"
    exit 1

fi
