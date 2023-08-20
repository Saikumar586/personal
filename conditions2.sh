#!/bin/bash


# need to install server
 
#  allow the access if its sudo user

#  else decline

USERNAME=$sudo

if [ USERNAME = $sudo ]
then
echo "install git"
else 
echo "login with sudo user"
fi
