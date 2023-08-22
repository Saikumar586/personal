#!/bin/bash

USERID=$(id -u)
BGreen='\e[0;32m'
Red='\e[1;31m'
DATE=[ $DATE -%F ]
LOGFILE=[ /h/devopstools/repos/shell-script.log $DATE ]
VALIDATE(){
if [ $1 -ne 0 ]
then 
    echo -e "$2 ${Red} failure \e[m "
    exit 1
else
    echo -e "$2 ${BGreen} success \e[m "
fi
}

if [ $USERID -ne 0 ]
then
    echo "its not root user "
    exit 1
#  else 
#  echo " login with root user"
fi
    yum install nnginx -y &>>/h/devopstools/repos/shell-script.log

VALIDATE $? "installing ngnix"

yum install mysql -y &>>/h/devopstools/repos/shell-script.log

VALIDATE $? "installing mysql"