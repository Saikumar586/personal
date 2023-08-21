#!/bin/bash


# need to install server
 
#  allow the access if its sudo user

#  else decline

USER=$(id -u)
BGreen='\033[1;32m'
if [ $USER -ne 0 ]
then
    echo "its not root user "
    exit 1
#else 
#echo "login with root user"
fi
    yum install nginx -y

if [ $? -ne 0 ]
then
    echo "installation error"
    exit 1
else
    echo -e "\e installation ${BGreen} success..!" \e[m
fi

yum install postfix -y
if [ $? -ne 0 ]
then
    echo "postfix error"
    exit 1
else 
    echo "postfix installed"
    exit 0
fi

##postfix
