#######################################################################################
#
#   Script Name : q15_file_not_access.sh
 #  Version     : 2.0
#   Date        : 28/7/2023
#   Purpose     : Write a shell script that finds and lists all files in a directory
#                  that have not been accessed in a specified number of days
 #########################################################################################

#!/bin/bash

DIR=$1
DAYS=$2

if [[  $# == 2 ]]
then
    echo "Executing Script."
else
    echo "Script is exepecting 2 arguments"
    echo "$0 Directory  and Number of DAYS"
    echo "Stopping Script..."
exit 0
fi

if [[ -d $DIR ]]
then
      echo -e " Given Directory $DIR exist "
      echo -e "finding and listing files in directory $DIR which are not been accessed in  $DAYS days"
      echo -e "Total number of files"
      find $DIR -type f -atime +$DAYS -exec ls -lhrt {} \; | wc -l
      echo -e "listing the files"
      find $DIR -type f -atime +$DAYS -exec ls -lhrt {} \;

else
    echo -e "Directory $DIR does not exists"
fi
