
####################################################################################
#                                                                              
#   Script Name : Q18.sh                                                        
#   Version     : 1.0                                                          
#   Date        : 24/7/2023                                                    
#   Purpose     : Write a shell script that monitors a specified file 
#                 for changes and executes a specific action when the file is modified.                                                                                                                                       #
######################################################################################

#!/bin/bash

DIR=$1
MOD_TIME=$2

if [[ $# ne 2 ]]
then 
   echo -e "please for Directory and modified time details"
exit 0
fi

if [[ -d $DIR ]]
then 
    echo -e "The directory $DIR is exists"
    read -p "would you like to check the last modified time files in directory $DIR ? (yes/no)" CHOICE
if [[ "CHOICE" == yes ]]
then 
   echo -e "Below files are modified in last $MOD_TIME in $DIR"
    find "$DIR" -type f -mmin -"$MOD_TIME" -exec ls -lhrt {} \; | wc -l
elif [[ "CHOICE == no" ]]
    echo -e "cancel a specified action"
 fi   
else
   echo -e "Directory not exists on system"
fi

