#!/bin/bash


################################################################################
#                                                                              #
#   Script Name : Q1.sh                                                        #
#   Version     : 1.0                                                          #
#   Date        : 24/7/2023                                                    #
#   Purpose     : Write a shell script that lists all files in a               #
#                 specified directory and saves the output to a text file      #
#                                                                              #
################################################################################

DIR_PATH=$1
OPT_FILE=$2

if [[ -d $DIR_PATH  ]];
then
  ls $DIR_PATH > $OPT_FILE
  echo "File listing Saved to $OPT_FILE"
else
  echo "Directory not present"
fi
