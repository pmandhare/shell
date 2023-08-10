
################################################################################
#                                                                              
#   Script Name : q6.sh                                                        
#   Version     : 1.0                                                          
#   Date        : 24/7/2023                                                    
#   Purpose     :Write a script that compresses and archives 
#                log files older than a certain number of days.                                                                                                                                      #
################################################################################

#!/bin/bash

DIR=$1
DAYS=$2

if [[  $# == 2 ]]
then
 echo "Executing Script."
else
echo "Script is exepecting 2 arguments"
echo "$0 Directory to archive and modified Days"
echo "Stopping Script..."
exit 0
fi
if [[ -d $DIR ]]
then 
   echo -e "Given directory exists , starts the file compression "
   #find $DIR -iname "*" -type f -mtime -$DAYS -print -exec cp -p {} /log_files \;
   #tar -cvjf backup.tar.bz2 /log_files
   # find $DIR -iname "*" -type f -mtime -$DAYS -print -exec tar -cvjf backup.tar.bz2 {} \;

   echo -e "Compression $DIR done"
else 
  echo -e "Directory not found . plz enter a correct path"
fi      
