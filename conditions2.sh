#!/bin/bash


# need to install server
 
#  allow the access if its sudo user

#  else decline

USER=$(id -u)
if [ $user -ne 0 ]
then
echo "its not root user "
else 
echo "login with root user"
fi
yum install nginx -y
