#!/bin/bash

# USERID=[ id -u ]

# VALIDATE(){

#     if [ USERID -ne 0 ]
#     then
#     echo "login with root user"
#     else
#     echo "install server..."
# }

# for install in {$nginx..$postfix}
# do 
#     echo "install server:$nginx,$postfix"
# done

# for i in list {1..100}
# do 
# echo $i
# done
USERID=$(id -u)
R='/e[0;33m'
G='/e[0;31m'
N='/e[0;0m'
FILENAME=$0
DATE=$(date +%F)
LOGFILE=/tmp/$DATE-$FILENAME
VALIDATE()
{
    if [ $1 -ne 0 ]
then 
    echo -e " ${Red} failure \e[m "
    exit 1
else
    echo -e " ${BGreen} success \e[m "
fi
}

for i in $@
do 
    yum install $i &>>$LOGFILE

    VALIDATE $?
done


