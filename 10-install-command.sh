#!/bin/bash

USERID=$(id -u)

if [ $userid -ne 0]
then
    echo "ERROR:: Please run this script with root access"
else 
    echo "You are running with root access"
fi        

dnf installed mysql  

if [ $? -ne 0 ]
then
    echo "Mysql is not installed... going to install it"
    dnf install mysql -y
    if [ $? -eq 0 ]
    then
        echo "Installing Mysql is ... success"
    else
        echo "Installing Mysql is ... failure"
        exit 1
    fi
else
   echo "Mysql is already installed... Nothing to do"
fi       

