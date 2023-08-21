#!/bin/bash


# need to install server
 
#  allow the access if its sudo user

#  else decline

USER=$(id -u)
BGreen='\033[1;32m'
Red="\033[0;31'

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
    echo -e "\e installation ${BGreen} success..! \e[m"
fi

yum install postfeix -y

if [ $? -ne 0 ]
then
    echo "\e ${Red}postfix error \e[m"
    exit 1
else 
    echo "\e ${BGreen}postfix installed \e[m"
    exit 0
fi

##postfix
