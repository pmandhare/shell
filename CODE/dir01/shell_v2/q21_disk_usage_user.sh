################################################################################
#
#   Script Name : q21_disk_usage_user.sh
#   Version     : 2.0
#   Date        : 28/7/2023
#   Purpose     : Write a script that calculates the total disk space
#                 used by a specified user and outputs the result.                                                                                                                                       #
################################################################################

#!/bin/bash

USER_LOC=/etc/passwd

USER=$1

if [[ $# == 1 ]]
then
    echo "Executing Script."
    read -p "Enter a file where you want to store result of disk space usage by $USER :" FILE

    cat $USER_LOC | grep $USER
    du -sh /home/$USER > $FILE
else
    echo "Script is exepecting exactly 1 arguments"
    echo "$0 User"
    echo "Stopping Script..."
exit 0
fi
