#!/bin/bash

#check the disk space
#disk space higher than 20% 
#send a alert to user.

#  CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')  
#  THRESHOLD=20 
#  gmail=psaikumar586@gmail.com
   
#  if [ "$CURRENT" -gt "$THRESHOLD" ] ; 
#  then  
#     mail -s 'Disk Space Alert' $gamil
#  Your root partition remaining free space is critically low. Used: $CURRENT%   
# fi

ALERT=5 # alert level 
ADMIN="psaikumar586@gmail.com" # dev/sysadmin email ID
df / | grep / | awk '{ print $5}' | sed 's/%//g' | 

while read -r output;
do
  echo "$output"
  usep=$(echo "$output" | awk '{ print $1}' | cut -d'%' -f1 )
  partition=$(echo "$output" | awk '{ print $2 }' )
  if [ $usep -ge $ALERT ]; then
    # echo "Running out of space \"$partition ($usep%)\" on $(hostname) as on $(date)" |
    # mail -s "Alert: Almost out of disk space $usep%" "$ADMIN"
    echo "This is a test mail & Date $(date)" | mail -s "running out of space" $ADMIN
  fi
done