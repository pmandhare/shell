################################################################################
#
#   Script Name : q6_compression.sh
#   Version     : 2.0
#   Date        : 28/7/2023
#   Purpose     :Write a script that compresses and archives
#                log files older than a certain number of days.                                                                                                                                      #
################################################################################


#!/bin/bash
DAYS=$1
LOG_PATH="/var/log"
ARCHIVE_PATH="/root/shell25"

if [[ $# -eq 1 ]]
then
    echo -e "I M RUNNING SCRIPT TO COMPRESS AND ARCHIVE LOG FILES OLDER THAN OLDER THAN $DAYS"

      if [ ! -d "$ARCHIVE_PATH" ]; then
        echo "Creating archive directory: $ARCHIVE_PATH"
        mkdir -p "$ARCHIVE_PATH"
    fi

    find $LOG_PATH -mtime +$DAYS -type f -exec /usr/bin/gzip {} \;
    ARCHIVE_FILENAME="logs_archive_$(date +'%Y%m%d').tar.gz"
    tar czf "$ARCHIVE_PATH/$ARCHIVE_FILENAME" "$LOG_PATH"/*.gz
    echo "Compression and archiving completed. Archive saved as: $ARCHIVE_PATH/$ARCHIVE_FILENAME"
else
    echo -e "This script requires exactly 1 arguments"
    echo -e "Usage : $0 NUMBER_OF_DAYS"
    exit 0
fi
