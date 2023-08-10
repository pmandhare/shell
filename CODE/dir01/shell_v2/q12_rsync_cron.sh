################################################################################
#
#   Script Name : q11_rsync_cron.sh
#   Version     : 2.0
#   Date        : 28/7/2023
#   Purpose     : Write a script that periodically syncs a
#                 local directory with a remote server using 'rsync' and 'cron'
#############################################################################

#!/bin/bash

read -p "Enter a directory:" SOURCE_DIR

if [[ -d $SOURCE_DIR ]]
then
  echo -e "Directory found $SOURCE_DIR, backing up a directory to remote server"
  REMOTE_DIR_PATH=root@192.168.48.211:/home
  rsync -avzh $SOURCE_DIR $REMOTE_DIR_PATH > /dev/null  2>&1
  crontab -e
  0 9 * * * /root/shell25/q11.sh

else
   echo -e "Directory not found. YOU need to enter correct path"
fi
