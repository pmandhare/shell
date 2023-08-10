################################################################################
#
#   Script Name : website_status.sh
#   Version     : 2.0
#   Date        : 27/7/2023
#   Purpose     : Write a script that monitors a list of websites
#                 and sends an email notification if any of them are down.                                                                                                                                      #
################################################################################


#!/bin/bash

WEBSITE=https://google.com
EMAIL=mandharep30@gmail.com

    status_code=$(curl -Is -w "%{http_code}" "$website" -o /dev/null)

    if [[ $status_code -ne 200 ]]
    then
        echo "Website $website is down" | mail -s "Website status" "$EMAIL"
    fi

