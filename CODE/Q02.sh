
#!/bin/bash
################################################################################
#                                                                              #
#   Script Name : Q02.sh                                                        #
#   Version     : 1.0                                                          #
#   Date        : 24/7/2023                                                    #
#   Purpose     : Write a shell script to monitor disk usage and send an       #
#                  email alert if usage exceeds a specified threshold          #
#                                                                              #                                                                    #
################################################################################

MAIL_ID=mandharep30@gmail.com
function MAIL ()
 {
  echo -e "Hello All
                 This is system generated mail,do not reply to this email
                  servername :- `hostname`
                  ServeeIP :- `ip r l | tail -1 | awk '{print $9}'`"

                  mail -s "disk utilization alert" $MAIL_ID
 }

INPUT_FILE="input.txt"
THRESHOLD="80"

df -h | egrep -v "devtmpfs|tmpfs|Filesystem" | awk '{print $5}' | head -1 |sed 's/%//g'>$INPUT_FILE
while read C1
do
        if [[  $C1 -ge  $THRESHOLD ]]
        then
            echo "Sending Email...."
            MAIL
        else
            echo "Disk is fine..."
        fi
done <$INPUT_FILE
