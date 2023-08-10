
#######################################################################################
#                                                                              
#   Script Name : Q15.sh                                                        
#   Version     : 1.0                                                          
#   Date        : 24/7/2023                                                    
#   Purpose     : Write a shell script that finds and lists all files in a directory
#                  that have not been accessed in a specified number of days                                                                                                                                       #
#########################################################################################

#!/bin/bash


DIR=$1
DAYS=$2
if [[  $# == 2 ]]
then
 echo "Executing Script."
else
echo "Script is exepecting 1 arguments"
echo "$0 Directory "
echo "Stopping Script..."
exit 0
fi
if [[ -d $DIR ]]
then
      echo -e " Given Directory exist "
      find $DIR -type f -atime $DAYS -exec ls -lhrt {} \; | wc -l
      echo " Files found on $DIR"
else
    echo -e "Directory does not exists"
fi


