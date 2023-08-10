################################################################################
#  Script Name : q17_Failed_ssh_login.sh
#  Version     : 2.0
#  Date        : 28/7/2023
#  Purpose     : Write a script that checks for and reports any
#                 failed SSH login attempts on a Linux server.
  ##############################################################################

#!/bin/bash

LOG_FILE=$1
REPORT_FILE=$2

if [[ $# == 2 ]]
then
    echo "Executing Script."
else
    echo "Script is exepecting exactly 2 arguments"
    echo "$0 <LOG_FILE> <REPORT_FILE>"
    echo "Stopping Script..."
exit 0
fi

grep 'Failed' $LOG_FILE > $REPORT_FILE
STA=$?
if [[ $? == 0 ]]
then
    echo -e " checking for Failed login and repoting Failed ssh login in $REPORT_FILE"
fi
