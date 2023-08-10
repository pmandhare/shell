
################################################################################
#                                                                              
#   Script Name : Q05.sh                                                        
#   Version     : 1.0                                                          
#   Date        : 24/7/2023                                                    
#   Purpose     :Write a shell script that checks for 
#                software updates and installs them automatically                                                                                                                                      #
################################################################################

#!/bin/bash

echo -e "Checking for the software update..."
yum check-updates
echo -e "would you like to update (yes or no)"
read ANSWER
if  [[ "$ANSWER" == "yes" ]]
then 
     yum update -y
     echo -e "service is updated now"
elif [[ "$ANSWER" == "no" ]]     
then
    echo -e "cancelling the update"
else 
    echo -e "plz enter a valid choice"
 fi   