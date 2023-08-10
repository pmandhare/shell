#!/bin/bash
################################################################################
#                                                                              
#   Script Name : Q14.sh                                                        
#   Version     : 1.0                                                          
#   Date        : 24/7/2023                                                    
#   Purpose     : Write a script that compares two directories 
#                 and reports any differences in their content                                                                                                                                       #
################################################################################

DIR01=$1
DIR02=$2
SDIFF=difference.txt
if [[ -d $DIR01 && -d $DIR02 ]]
then 
   echo -e "Provided two Directories exists"
   diff $DIR01 $DIR02 >$SDIFF
   echo -e "Saving difference of two files in $SDIFF "
fi
