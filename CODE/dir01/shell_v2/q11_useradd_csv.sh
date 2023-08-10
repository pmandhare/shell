
################################################################################
#   Script Name : q11_useradd_csv.sh
#   Version     : 2.0
#   Date        : 28/7/2023
#   Purpose     : Write a shell script that adds new users to
#                 the system based on a list of names in a CSV file
################################################################################

#!/bin/bash

read -p "Enter a csv file :" FILE

if [[ ! -f "$FILE" ]]; then
    echo "Error: The specified file '$FILE' does not exist."
    exit 1
fi

while IFS="," read -r username;
do

    if id "$username" &>/dev/null; then
        echo "User '$username' already exists. Skipping..."
        continue
    fi
    echo "Adding users:$username"
    useradd -m -s /home $username > /dev/null  2>&1
done < "$FILE"

