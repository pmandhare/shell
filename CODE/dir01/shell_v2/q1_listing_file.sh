
################################################################################
#
#   Script Name : Q1.lists_files.sh
#   Version     : 2.0
#   Date        : 29/7/2023
#   Purpose     : Write a shell script that lists all files in a
#                 specified directory and saves the output to a text file
#
#################################################################################

#!/bin/bash

DIR_PATH=$1
OPT_FILE=$2

if [[ $# -ne 2 ]]
then
   echo "Usage: $0 <Directory> <output file>"
   exit 0
fi

if [[ -d $DIR_PATH  ]]
then
    echo -e  "listing files of $DIR_PATH to $OPT_FILE"
    ls -lhrt $DIR_PATH > $OPT_FILE
    echo "Files listing Saved to $OPT_FILE"
    exit 0
else
    echo "Error:Directory not found"
fi
