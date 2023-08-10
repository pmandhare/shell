#!/bin/bash


################################################################################
#                                                                              #
#   Script Name : Q1.sh                                                        #
#   Version     : 1.0                                                          #
#   Date        : 24/7/2023                                                    #
#   Purpose     : Write a shell script that checks whether a specified 
#                 service is running and restarts it if it's not running      #
#                                                                              #
################################################################################



#!/bin/bash


read -p "Please Enter the service name:" SERVICE

systemctl is-active $SERVICE

if [[ $? == 0  ]]

then

   echo "service is running"

else

    echo "service not running"

    echo "restarting the service"

    systemctl restart $SERVICE

fi