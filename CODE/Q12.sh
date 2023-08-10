
################################################################################
#                                                                              
#   Script Name : Q12.sh                                                        
#   Version     : 1.0                                                          
#   Date        : 24/7/2023                                                    
#   Purpose     : Write a script that periodically syncs a 
#                 local directory with a remote server using 'rsync' and 'cron'                                                                                                                                       #
################################################################################

#!/bin/bash

LOC_DIR=$1
REM_DIR=$2


if [[ $# == 2 ]]
then
echo "Executing Script."
else
echo "Script is exepecting 2 arguments"
echo "$0 source_directory remote_directory"
echo "Stopping Script..."
exit 0
fi

if [[ -d $LOC_DIR ]]
then 
echo -e "source directory exists"
REMOTE_DIR_PATH=root@192.168.0.177:/home
  rsync -avzh $LOC_DIR $REM_DIR_ > /dev/null  2>&1
  echo -e "Backup to remote directory done successfully"
else
   echo -e "Directory not found. YOU need to enter correct path"
fi
