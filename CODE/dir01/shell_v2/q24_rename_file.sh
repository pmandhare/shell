################################################################################
#
#   Script Name : q24_Rename_files.sh
#   Version     : 2.0
#   Date        : 28/7/2023
#   Purpose     : Write a shell script that renames a large number of files
#                 based on a specified pattern or naming convention.
########################################################################################       
#!/bin/bash
DIR=$1
PATTERN=$2
NEW_PATTERN=$3

if [[ ! -d "$DIR" ]]; then
    echo "Error: Directory '$DIR' does not exist."
    exit 1
fi

cd "$DIR" || exit 1


for file in $PATTERN
 do
    new_file="${file/$PATTERN/$NEW_PATTERN}"
    mv "$file" "$new_file"
    echo "Renamed: $file -> $new_file"
done
