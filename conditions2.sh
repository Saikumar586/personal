#!/bin/bash


# need to install server
 
#  allow the access if its sudo user

#  else decline

USER=[id -u]
if [ $user -ge 0 ]
then
echo "its root user "
else 
echo "login with root user"
fi
