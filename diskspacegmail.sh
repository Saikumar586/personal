#!/bin/bash

#check the disk space
#disk space higher than 20% 
#send a alert to user.

 CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')  
 THRESHOLD=20 
   
 if [ "$CURRENT" -gt "$THRESHOLD" ] ; 
 then  
   mail -s 'Disk Space Alert' psaikumar586@gmail.com <<- EOF  
 Your root partition remaining free space is critically low. Used: $CURRENT% 
EOF  
fi