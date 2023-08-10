#!/bin/bash

################################################################################
#                                                                              #
#   Script Name : Q04.sh                                                        #
#   Version     : 1.0                                                          #
#   Date        : 25/7/2023                                                    #
#   Purpose     : Write a script that backs up a specified directory to
#                  a remote server using 'rsync' and SSH                                                                                            #                                                                    #
################################################################################

read -p "Enter a directory:" SOURCE_DIR
if [[ -d $SOURCE_DIR ]]
then
  echo -e "directory found , backing up a directory to remote server"
  REMOTE_DIR_PATH=root@192.168.0.177:/home
  rsync -avzh $SOURCE_DIR $REMOTE_DIR_PATH > /dev/null  2>&1
else
   echo -e "Directory not found. YOU need to enter correct path"
fi
