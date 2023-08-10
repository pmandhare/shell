
################################################################################
#                                                                              
#   Script Name : Q20.sh                                                        
#   Version     : 1.0                                                          
#   Date        : 24/7/2023                                                    
#   Purpose     :Write a shell script that retrieves the current 
#                weather for a specified location using a weather API.                                                                                                                                       #
################################################################################

#!/bin/bash

read -p "Enter a Location to check wheather: " LOCATION
read -p "Are you sure want to check weather for specified $LOCATION (yes/no):" CHOICE
if [[ "$CHOICE" == yes ]]
then 
echo -e "checking the weather report for $LOCATION"
curl fr.wttr.in/$LOCATION
else
echo -e "cancel it"
fi