#!/bin/bash

USERID=$(id -u)
BGreen='\e[0;32m'
Red='\e[1;31m'
VALIDATE(){
if [ $1 -ne 0 ]
then 
    echo -e "\e ainstallation ${Red}failure \e[m "
    exit 1
else
    echo -e "\e ainstallation ${BGreen}success \e[m "
fi
}

if [ $USERID -ne 0 ]
then
    echo "its not root user "
    exit 1
#  else 
#  echo " login with root user"
fi
    yum install ngin1x -y

VALIDATE $?

yum install mysql -y

VALIDATE $?