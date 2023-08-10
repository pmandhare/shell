#!/bin/bash

SERVICE=$1

function START_SERVICE () {
	systemctl is-active $SERVICE
	if [[ $? == 0  ]]
	then
		echo "service is running"
	else
		echo "Would you like to start $SERVICE? (yes or no)"
		read ANSWER
			if [[ "$ANSWER" -eq "yes" ]];
			then
				systemctl start $SERVICE
				systemctl enable $SERVICE
				echo "$SERVICE service started successfully"
			else
				echo "will not start the service"
				echo "not valid answer"
				exit 1
			fi
	fi
}

if [[ $# == 1 ]]
then
    echo "Executing Script."
	echo "Checking is service is installed ?"
	rpm -qa | grep $SERVICE >/dev/null
		if [[ $? == 0  ]]
		then
			echo "Service is installed"
			START_SERVICE
		else
			echo "Service is not installed"
			read -p "Do you want to install (Y/N) ?" INPUT
			shopt -s nocasematch
				if [[ $INPUT == "y" ]]
				then
					echo "installing Service.."
					yum install -y $SERVICE
					START_SERVICE
				else
					echo "Not installing Service.."
					echo "Thanks..."
					exit 0
				fi
else
    echo "Script is exepecting exactly 1 arguments"
    echo "Usage:- $0 SERVICE_NAME"
    echo "Stopping Script..."
    exit 0
fi