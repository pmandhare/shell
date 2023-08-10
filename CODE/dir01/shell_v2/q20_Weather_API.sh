################################################################################
#
#   Script Name : q20_Weather_API.sh
#   Version     : 2.0
#   Date        : 29/7/2023
#   Purpose     :Write a shell script that retrieves the current
#                weather for a specified location using a weather API.                         ############################################################################

#!/bin/bash

LOCATION=$1

if [[ $# == 1 ]]
then
    echo "Executing Script."
else
    echo "Script is exepecting exactly 1 arguments"
    echo "$0 Location"
    echo "Stopping Script..."
exit 0
fi

read -p "Are you sure want to check weather for specified $LOCATION (yes/no):" CHOICE

if [[ "$CHOICE" == yes ]]
then
    echo -e "checking the weather report for $LOCATION"
    curl fr.wttr.in/$LOCATION
else
echo -e "cancel it"
fi
