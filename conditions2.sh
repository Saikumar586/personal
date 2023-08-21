#!/bin/bash


# need to install server
 
#  allow the access if its sudo user

#  else decline

USER=$(id -u)
if [ $USER -ne 0 ]
then
echo "its not root user "
exit 1
#else 
#echo "login with root user"
fi
yum install nginxxx -y
