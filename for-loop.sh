#!/bin/bash

USERID=[ id -u ]

VALIDATE(){

    if [ USERID -ne 0 ]
    then
    echo "login with root user"
    else
    echo "install server..."

}
for install in {$nginx..$postfix}
do 
    echo "install server:$nginx,$postfix"
done