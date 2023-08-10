################################################################################
#   Script Name : q22_summary_of_system_logs.sh
#   Version     : 2.0
#   Date        : 24/7/2023
#   Purpose     :Write a shell script that sends a daily summary of system logs via email      ####################################################################################

#!/bin/bash

MAIL_ID="mandharep30@gmail.com"

FILE="$1"

if [[ $# -eq 1 ]];
then
    echo "Executing Script."
    echo -e "checking system logs using /var/log/messages and storing output in $FILE"
    grep -i error /var/log/messages > "$FILE"
    echo -e " sending dailly summary of system logs via mail $MAIL_ID"
    cat "$FILE" | mail -s "daily summary of system logs" $MAIL_ID
else
    echo "Script is exepecting exactly 1 arguments"
    echo "$0 FILE"
    echo "Stopping Script..."
exit 0
fi
