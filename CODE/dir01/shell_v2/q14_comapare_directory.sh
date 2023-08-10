################################################################################
#
#   Script Name : q14_comapare_directory.sh
#   Version     : 2.0
#   Date        : 29/7/2023
#   Purpose     : Write a script that compares two directories
#                 and reports any differences in their content
 ################################################################################

#!/bin/bash

DIR01=$1
DIR02=$2
SDIFF=difference.txt


if [[ $# == 2 ]]
then
    echo "Executing Script."
else
    echo "Script is exepecting exactly 2 arguments"
    echo "$0 <directory1> <directory1>"
    echo "Stopping Script..."
exit 0
fi


if [[ -d $DIR01 && -d $DIR02 ]]
then
   echo -e "Provided two Directories exists"
   diff $DIR01 $DIR02 >$SDIFF
   echo -e "Saving difference of two files in $SDIFF "
   cat $SDIFF
fi
