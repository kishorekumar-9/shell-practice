#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 #give other than 0 upto 127
else
    echo "You are running with root access"
fi

#validate function takes input as exit status, what command they tried to install
VALIDATE(){
    if [ $1 -eq 0 ]
    then
        echo "Installing $2 is ... SUCCESS"
    else
        echo "Insatlling $2 is ... FAILURE"
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo "MYSQL is not installed... going to install it"
    dnf install mysql -y
    VALIDATE $? "MYSQL"
else
    echo "MYSQL is already installed... Nothing to do"
fi  

dnf list installed python3
if [ $? -ne 0 ]
then
    echo "Python3 is not installed... going to install it"
    dnf install python3 -y
    VALIDATE $? "Python3"
else
    echo "Python3 is already installed... Nothing to do"
fi

dnf list installed nginx
if [ $? -ne 0 ]
then
    echo "Nginx is not installed... going to install it"
    dnf install nginx -y
    VALIDATE $? "Nginx"
else    
    echo "Nginx is already installed... Nothing to do"
fi
