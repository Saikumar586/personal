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
R="\e[32m" #'\e[0;32m'
G="\e[33m"
N="\e[0m"
FILENAME=$0
DATE=$(date +%F)
LOGFILE=/tmp/$DATE-$FILENAME

VALIDATE()
{
    if [ $1 -ne 0 ]
then 
    echo -e "$R failuree $N "
    exit 1
else
    echo -e "$G success $N "
fi
}

for i in $@
do 
    yum install $i -y  &>>$LOGFILE 
    
    if [ $? -ne 0 ] 
    then  
    echo "install package: $i" 
    else 
    echo "Already installed ignore : $i"
    fi

    VALIDATE $? "server $i"
done

 



