
################################################################################
#
#   Script Name : q13_virtual_host.sh
#   Version     : 2.0
#   Date        : 28/7/2023
#   Purpose     : Write a shell script that automates the process
#                 of setting up a new virtual host on a web server
################################################################################

#!/bin/bash

read -p "Enter a domain name :" DOMAIN
read -p "check wheather httpd package install or not? (yes/no)" CHOICE
if [[ "$CHOICE" == "yes" ]]
then
    rpm -qa | grep httpd > /dev/null  2>&1
    echo "httpd package installed"
else
      echo -e "installing and enabling httpd service first"
      yum install httpd -y
      sysyemctl enable httpd
      sysyemctl start httpd
      echo "httpd service is installed and started"
fi

if [[ $? == 0 ]]
then
    echo "httpd is installed and setting up the virtual host"
     mkdir -p /var/www/$DOMAIN/html
     mkdir -p /var/www/$DOMAIN/log
     chown -R $USER:$USER /var/www/$DOMAIN/html
     chmod -R 755 /var/www
        echo -e " <html>
         <head>
                <title>Welcome to your website!</title>
         </head>
         <body>
                <h1>Success! The your_domain virtual host is working!</h1>
         </body>
       </html>" >>/var/www/$DOMAIN/html/index.html
else
echo -e "You need to install httpd service first"
fi
