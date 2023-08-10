
################################################################################
#                                                                              
#   Script Name : Q23.sh                                                        
#   Version     : 1.0                                                          
#   Date        : 24/7/2023                                                    
#   Purpose     :Write a script that performs a search and replace 
#                operation on multiple files in a directory.                                                                                                                                       #
################################################################################

#!/bin/bash

DIR=$1
SEARCH_STR=$2
REPLACE_STR=$3

if [[ $# -ne 3 ]]
then 
   echo -e "Usage: $0 <DIR> <SEARCH STRING> <REPLACE STRING>"
    exit 1
fi
if [[ -d $DIR ]]
then

    echo -e "GIVEN DIRECTORY IS EXISTS : $DIR"
    exit 1
fi
for file in "$DIR"/*cd 
do 
   if [[ -f "$file" ]] 
   then
        sed -i "s/$SEARCH_STR/$REPLACE_STR/g" "$file"
        let i++
fi
 done