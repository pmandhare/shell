
################################################################################
#                                                                              
#   Script Name : Q09.sh                                                        
#   Version     : 1.0                                                          
#   Date        : 24/7/2023                                                    
#   Purpose     :Write a shell script that scans a directory 
#                for files matching a certain pattern and deletes them                                                                                                                                      #
################################################################################


#!/bin/bash

DIR=$1
FILE_PATTERN=$2

if [[ $# == 2 ]]
then
echo "Executing Script."
else
echo "Script is exepecting 2 arguments"
echo "$0 directory file_pattern"
echo "Stopping Script..."
exit 0
fi
if [[ -d  $DIR ]]
then
   find "$DIR" -type f -name "$FILE_PATTERN" -exec rm {} \;
   echo -e "file matching pattern deleted successfully"
else
echo -e "directory does not exist"
fi
~
