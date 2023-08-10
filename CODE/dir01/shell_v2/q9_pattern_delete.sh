################################################################################
#
#   Script Name : q1_q9_pattern_delete.sh
#   Version     : 2.0
#   Date        : 28/7/2023
#   Purpose     :Write a shell script that scans a directory
#                for files matching a certain pattern and deletes them                         
 ############# #################################################################
#!/bin/bash
DIR=$1
PATTERN=$2
if [[ $# == 2 ]]
then
    echo "Executing Script."
else
    echo "Script is exepecting exactly 2 arguments"
    echo "$0 Directory PATTERN"
    echo "Stopping Script..."
    exit 0
fi

if [[ -d  $DIR ]]
then
    echo -e "Directory $DIR exists"
    find $DIR -type f -name '$PATTERN' -exec rm {} \;
    echo -e "file matching pattern deleted successfully"
else
    echo -e "Directory $DIR does not exist"
fi
