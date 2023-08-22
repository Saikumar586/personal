#!/bin/bash

USERID=$(id -u)
BGreen='\e[0;32m'
Red='\e[1;31m'
# VALIDATE(){
# if [ $1 -ne 0 ]
# then 
#     echo -e "\e $2 ${Red} failure \e[m "
#     exit 1
# else
#     echo -e "\e $2 ${BGreen} success \e[m "
# fi
VALIDATE() {
if [ $1 -ne 0 ];
then
echo -e "\e $2${Red} is failure \e[m"
else
echo -e "\e $2${BGreen} is success \e[m"
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

VALIDATE $? "installing ngnix"

yum install mysql -y

VALIDATE $? "installing mysql"