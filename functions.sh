#!/bin/bash

USERID=$(id -u)
BGreen='\033[0;32m'
Red='\033[0;31m'
validate()
{
if [ $1 -ne 0 ]
then 
    echo -e "\e installation ${red}failure \e[m "
exit 1
else
    echo -e "\e installation ${BGreen}success \e[m "
}

if [ $USERID -ne 0 ]
then
    echo "its not root user "
    exit 1
#  else 
#  echo " login with root user"
fi
    yum install nginx -y

validate $?

yum install mysql -y

validate $?