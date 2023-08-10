
################################################################################
#                                                                              
#   Script Name : Q07.sh                                                        
#   Version     : 1.0                                                          
#   Date        : 24/7/2023                                                    
#   Purpose     :Write a shell script that generates a report of system 
#                resource usage, including CPU, memory, and disk usage..                                                                                                                                      #
################################################################################

#!/bin/bash

CPU_USAGE=$(top -bn1 | awk '/Cpu/ { print $2}')  
MEM_USAGE=$(free -m | awk '/Mem/{print $3}')
#DISK_USAGE=$(df -h | egrep -v 'tmpfs|devtmpfs|Filesystem'|grep '/dev/sda2'|awk '{print $5}')
DISK_USAGE=$(df -h | grep '/dev/sdb'|awk '{print $5}')


echo " amount of cpu usage :" $CPU_USAGE
echo " Amount of memory usage: " $MEM_USAGE
echo "Amount of Disk_Usage: " $DISK_USAGE



 


