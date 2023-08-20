#!/bin/bash


# need to install server
 
#  allow the access if its sudo user

#  else decline

id=$0
id=$1000

if [ $id = 0 ]
then
echo "its root user"
else 
echo "login with sudo user"
fi
