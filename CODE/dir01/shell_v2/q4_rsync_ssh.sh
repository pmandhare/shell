################################################################################
#                                                                               #
#   Script Name : q4_rsync_ssh.sh                                               #
#   Version     : 2.0                                                           #
#   Date        : 27/7/2023                                                     #
#   Purpose     : Write a script that backs up a specified directory to         #
#                  a remote server using 'rsync' and SSH                        #
#                                                                               #              
################################################################################


#!/bin/bash
SRC_DIR=$1
RMT_USR=$2
RMT_IP=$3
RMT_LOC=$4

if [[ $# == 4 ]]
then
    echo "Executing Script."
else
    echo "Script is exepecting exactly 4 arguments"
    echo "$0 <SOURCE DIR> <RMT_USR> <RMT_IP> <RMT_LOC>"
    echo "Stopping Script..."
exit 0
fi

if [[ -d $SOURCE_DIR ]]
then
     echo -e "Directory found , backing up a directory to remote server"
     rsync -avzh $SRC_DIR $RMT_USR@$RMT_IP:$RMT_LOC
else
   echo -e "Directory not found. YOU need to enter correct path"
fi
