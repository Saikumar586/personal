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
USERID=[ id -u ]
R='/e[0;33]'
G='/e[0;31]'
N='/e[0;0]'
VALIDATE()
{
    if [ $USERID -ne 0]
    then
    echo -e "pls check with $R root user $N" 
    else
    echo -e "install $G servers... $N"
    fi
}

for i in $@
do 
    yum install $i

    VALIDATE $?
done

