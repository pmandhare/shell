################################################################################
#
#   Script Name : q23_search_replace_operation.sh                                              
#   Version     : 2.0
#   Date        : 28/7/2023
#   Purpose     :Write a script that performs a search and replace
#                operation on multiple files in a directory.                                                                                                                                       #
################################################################################


#!/bin/bash

DIR=$1
SEARCH_STR=$2
REPLACE_STR=$3

if [[ $# -ne 3 ]]
then
     echo -e "Please enter Directory,Search string,Replace string"
     exit 1
fi

if [[ -d $DIR ]]
then

    echo -e "GIVEN DIRECTORY EXISTS : $DIR"
    sed -i "s/$SEARCH_STR/$REPLACE_STR/gi" $DIR/*
    echo -e "replace $SEARCH_STR with $REPLACE_STR successfully"
else
    echo -e "Given directory does not exist"
fi
