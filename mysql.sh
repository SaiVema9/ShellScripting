#!/bin/bash

Id=$(id -u)

if [ $Id -ne 0 ]
then 
    echo "Error:: Please use root user access"
else 
    echo "You are in root user access only"

fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "MySQL is not installed on this machine"
    echo "Installing MySQL"
    dnf install mysql -y
        if [ $? -eq 0]
        then 
        echo "MySQL installation......success"
        else 
        echo "MySQL installation.......failure"

        fi      
else 
    echo "Mysql is already installed on this machine"
    exit 1
fi