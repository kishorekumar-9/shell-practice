#!/bin/bash

USERID=$(id -u)

if [ $userid -ne 0]
then
    echo "ERROR:: Please run this script with root access"
else 
    echo "You are running with root access"
fi        

dnf install mysql -y 