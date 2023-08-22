#!/bin/bash

USERID=$(id -u)
BGreen='\e[0;32m'
Red='\e[1;31m'
VALIDATE(){
if [ $1 -ne 0 ]
then 
    echo -e "\e Installation ${Red} failure \e[m "
    exit 1
else
    echo -e "\e Installation ${BGreen} success \e[m "
fi
}

if [ $USERID -ne 0 ]
then
    echo "its not root user "
    exit 1
#  else 
#  echo " login with root user"
fi
    yum install nginx -y

VALIDATE $? "ngnix"

yum install mysql -y

VALIDATE $? "mysql"